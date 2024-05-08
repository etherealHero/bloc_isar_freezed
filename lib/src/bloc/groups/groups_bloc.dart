import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../repository/repository.dart';
import '../../models/group/group.dart';

part 'groups_event.dart';
part 'groups_state.dart';
part 'groups_bloc.freezed.dart';

class GroupsBloc extends Bloc<GroupsEvent, GroupsState> {
  GroupsBloc() : super(GroupsInitial(<Group>[])) {
    on<_GetAll>(_onGetAll);
    on<_Add>(_onAdd);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
    on<_ReorderComplete>(_onReorderComplete);
  }

  final repository = Repository<Group>();
  Group? selectedGroup;
  int maxOrder = -1;

  void _onGetAll(_GetAll event, Emitter<GroupsState> emit) async {
    var groups = await repository.getAll();

    groups.sort((a, b) => b.order.compareTo(a.order));

    if (groups.isNotEmpty) {
      maxOrder = groups
          .reduce((curr, next) => curr.order > next.order ? curr : next)
          .order;
    }

    emit(GroupsState.loaded(groups));
  }

  void _onAdd(_Add event, Emitter<GroupsState> emit) async {
    if (maxOrder == -1) {
      maxOrder = 1;
    } else {
      ++maxOrder;
    }

    var newGroup = Group(
        title: event.title,
        dateCreateUtc: DateTime.now().toUtc(),
        dateModifyUtc: DateTime.now().toUtc(),
        order: maxOrder);
    var id = await repository.create(newGroup);
    newGroup = newGroup.copyWith(id: id);

    var newState = state.copyWith(groups: [newGroup, ...state.groups]);

    emit(GroupsState.loaded(newState.groups));
  }

  void _onUpdate(_Update event, Emitter<GroupsState> emit) async {
    Group updatedGroup = event.group.updateModifyDate();
    final newGroups = [...state.groups];
    final index = state.groups.indexWhere((t) => t.id == updatedGroup.id);

    if (index == -1) {
      return;
    }

    await repository.update(updatedGroup);

    // TODO: не работает
    if (newGroups[index].isSelected != updatedGroup.isSelected &&
        selectedGroup != null &&
        selectedGroup!.id != updatedGroup.id) {
      final indexOfPrevSelectedGroup =
          state.groups.indexWhere((t) => t.id == selectedGroup!.id);

      // newGroups[indexOfPrevSelectedGroup] = newGroups[indexOfPrevSelectedGroup]
      //     .copyWith(isSelected: false)
      // ..updateModifyDate();
      add(GroupsEvent.update(
          newGroups[indexOfPrevSelectedGroup].copyWith(isSelected: false)));
    }

    selectedGroup = updatedGroup.copyWith();
    newGroups[index] = updatedGroup;

    print(newGroups
        .map((e) => "${e.id}(${e.isSelected} : ${e.dateModifyUtc}), "));

    emit(GroupsState.loaded(newGroups));
  }

  void _onDelete(_Delete event, Emitter<GroupsState> emit) async {
    Group group;

    try {
      group = state.groups.firstWhere((t) => t.id == event.groupId);
    } on StateError {
      if (state.groups.isEmpty) {
        emit(GroupsState.loaded(<Group>[]));
      }

      return;
    }

    var isDeleted = await repository.delete(group.id!);

    if (isDeleted) {
      var groups = state.groups.where((t) => t.id != event.groupId).toList();

      emit(GroupsState.loaded(groups));

      if (group.order == maxOrder) {
        if (groups.isNotEmpty) {
          maxOrder = groups.first.order;
        } else {
          maxOrder = -1;
        }
      }
    }
  }

  void _onReorderComplete(
      _ReorderComplete event, Emitter<GroupsState> emit) async {
    final newGroups = [...state.groups];
    final orders = state.groups.map((e) => e.order).toList();

    final from = min(event.dropIndex, event.index);
    final to = max(event.dropIndex, event.index) + 1;

    newGroups.insert(event.dropIndex, newGroups.removeAt(event.index));
    for (var i = from; i < to; i++) {
      newGroups[i] = newGroups[i].copyWith(order: orders[i])
        ..updateModifyDate();
      await repository.update(newGroups[i]);
    }

    emit(GroupsState.reordered(newGroups, from, to));
  }
}
