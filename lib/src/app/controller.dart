part of "app.dart";

class AppController {
  const AppController(this._ctx);

  void addGroup(String title, int color) {
    _groupsBloc.add(GroupsEvent.add(title, color));
  }

  void updateGroup(Group group) async {
    int emittedTaskCount = 0;
    for (var task in group.tasks) {
      _tasksBloc.add(TasksEvent.update(task.copyWith(), () {
        emittedTaskCount += 1;
        if (emittedTaskCount == group.tasks.length) {
          _tasksBloc.add(
            TasksEvent.getSublist(group.tasks.map((t) => t.id).toList()),
          );
        }
      }));
    }

    _groupsBloc.add(GroupsEvent.update(group, () {}));
  }

  void removeGroup(Group group) {
    _groupsBloc.add(GroupsEvent.delete(group.id));

    for (var task in group.tasks) {
      _tasksBloc.add(TasksEvent.delete(task.id));
    }

    if (group.id == selectedGroup) selectedGroup = null;
  }

  void addTask(String title, String description) {
    _tasksBloc.add(TasksEvent.add(
      "title",
      "description",
      _notifyGroup(selectedGroup),
    ));
  }

  void updateTask(Task task) {
    var prevTask = _tasksBloc.state.tasks.firstWhere((t) => t.id == task.id);

    Group? prevGroup;
    try {
      prevGroup = _groupsBloc.state.groups
          .firstWhere((g) => g.id == prevTask.group?.id)
          .copyWith();
    } on StateError {
      prevGroup = null;
    }

    Group? newGroup;
    try {
      newGroup = _groupsBloc.state.groups
          .firstWhere((g) => g.id == task.group?.id)
          .copyWith();
    } on StateError {
      newGroup = null;
    }

    _tasksBloc.add(TasksEvent.update(task, () {
      if (newGroup != null) {
        _groupsBloc.add(GroupsEvent.update(newGroup, () {
          if (prevGroup != null) {
            _groupsBloc.add(GroupsEvent.update(prevGroup, null));
          }
        }));
      }
    }));
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

  Group? _notifyGroup(int? groupId) {
    try {
      var group = _groupsBloc.state.groups.firstWhere((g) => g.id == groupId);
      _groupsBloc.add(GroupsEvent.update(group, null));
      return group;
    } on StateError {
      return null;
    }
  }

  final BuildContext _ctx;

  TasksBloc get _tasksBloc => _ctx.read<TasksBloc>();
  GroupsBloc get _groupsBloc => _ctx.read<GroupsBloc>();
}
