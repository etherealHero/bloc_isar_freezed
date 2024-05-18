import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../repository/repository.dart';
import '../../models/group/group.dart';

part 'groups_event.dart';
part 'groups_state.dart';
part 'groups_bloc.freezed.dart';

class GroupsBloc extends Bloc<GroupsEvent, GroupsState> {
  GroupsBloc() : super(GroupsState.initial()) {
    on<_GetAll>(_onGetAll);
    on<_Add>(_onAdd);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
    on<_ReorderComplete>(_onReorderComplete);
  }

  final repository = Repository<GroupDTO>();
  int maxOrder = -1;

  void _onGetAll(_GetAll event, Emitter<GroupsState> emit) async {
    var groups = (await repository.getAll()).map((e) => e.toEntity()).toList();

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

    var groupDTO = GroupDTO(
      title: event.title,
      color: event.color,
      dateCreateUtc: DateTime.now().toUtc(),
      dateModifyUtc: DateTime.now().toUtc(),
      order: maxOrder,
    );

    await repository.create(groupDTO);

    var newState = state.copyWith(
      groups: [(groupDTO.toEntity()), ...state.groups],
    );

    emit(GroupsState.loaded(newState.groups));
  }

  void _onUpdate(_Update event, Emitter<GroupsState> emit) async {
    Group updatedGroup = event.group.copyWith(
      dateModifyUtc: DateTime.now().toUtc(),
    );

    final newGroups = [...state.groups];
    final index = state.groups.indexWhere((t) => t.id == updatedGroup.id);

    if (index == -1) {
      return;
    }

    await repository.update(updatedGroup.toDTO());

    updatedGroup = (await repository.get(updatedGroup.id))!.toEntity();

    newGroups[index] = updatedGroup;

    emit(GroupsState.loaded(newGroups));

    event.cb?.call();
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

    var isDeleted = await repository.delete(group.id);

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

    final index = state.groups.indexWhere((g) => g.id == event.id);
    final dropIndex = state.groups.indexWhere((g) => g.id == event.dropId);

    final from = min(dropIndex, index);
    final to = max(dropIndex, index) + 1;

    newGroups.insert(dropIndex, newGroups.removeAt(index));

    for (var i = from; i < to; i++) {
      newGroups[i] = newGroups[i]
          .copyWith(order: orders[i], dateModifyUtc: DateTime.now().toUtc());
      await repository.update(newGroups[i].toDTO());
    }

    emit(GroupsState.loaded(newGroups));
  }
}
