part of 'groups_bloc.dart';

@freezed
class GroupsState with _$GroupsState {
  const GroupsState._();
  const factory GroupsState(
    final List<Group> groups,
    final bool isFetching,
  ) = _GroupsState;

  factory GroupsState.initial() => const GroupsState(<Group>[], true);
  factory GroupsState.loaded(List<Group> groups) => GroupsState(groups, false);
}
