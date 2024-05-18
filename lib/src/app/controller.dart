part of "app.dart";

class AppController {
  const AppController(this._ctx);

  void addGroup(String title, int color) {
    _groupsBloc.add(GroupsEvent.add(title, color));
  }

  void updateGroup(Group group) async {
    for (var task in group.tasks) {
      _tasksBloc.add(TasksEvent.update(task.copyWith()));
    }

    _groupsBloc.add(GroupsEvent.update(group, () {
      _tasksBloc.add(
        TasksEvent.getSublist(group.tasks.map((t) => t.id).toList()),
      );
    }));
  }

  void removeGroup(Group group) {
    _groupsBloc.add(GroupsEvent.delete(group.id));

    for (var task in group.tasks) {
      _tasksBloc.add(TasksEvent.delete(task.id));
    }

    if (group.id == selectedGroup) selectedGroup = null;
  }

  void addTask(String title, String description) {
    _tasksBloc.add(TasksEvent.add("title", "description", selectedGroup));
    _notifyGroup(selectedGroup);
  }

  void updateTask(Task task) {
    _tasksBloc.add(TasksEvent.update(task));
    _notifyGroup(task.group?.id);
  }

  void removeTask(Task task) {
    _tasksBloc.add(TasksEvent.delete(task.id));
    _notifyGroup(task.group?.id);
  }

  int? get selectedGroup {
    AppState appState = _ctx.findAncestorStateOfType<AppState>()!;
    return appState._selectedGroupNotifier.value;
  }

  ValueNotifier<int?> get selectedGroupNotifier {
    AppState appState = _ctx.findAncestorStateOfType<AppState>()!;
    return appState._selectedGroupNotifier;
  }

  set selectedGroup(int? patchedGroupId) {
    AppState appState = _ctx.findAncestorStateOfType<AppState>()!;
    appState._selectedGroupNotifier.value = patchedGroupId;
  }

  void _notifyGroup(int? groupId) {
    try {
      var group = _groupsBloc.state.groups.firstWhere((g) => g.id == groupId);
      _groupsBloc.add(GroupsEvent.update(group, null));
    } on StateError {
      return;
    }
  }

  final BuildContext _ctx;

  TasksBloc get _tasksBloc => _ctx.read<TasksBloc>();
  GroupsBloc get _groupsBloc => _ctx.read<GroupsBloc>();
}
