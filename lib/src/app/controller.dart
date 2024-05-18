part of "app.dart";

class AppController {
  const AppController(this._ctx);

  final BuildContext _ctx;

  TasksBloc get _tasksBloc => _ctx.read<TasksBloc>();
  GroupsBloc get _groupsBloc => _ctx.read<GroupsBloc>();

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

  void removeGroup(Group group) {
    for (var task in group.tasks) {
      _tasksBloc.add(TasksEvent.delete(task.id));
    }

    _groupsBloc.add(GroupsEvent.delete(group.id));

    if (group.id == selectedGroup) selectedGroup = null;
  }

  void changeSelectedGroup(Group group, int? groupId) {
    var patchedSelectedGroup = groupId == group.id ? null : group.id;

    selectedGroup = patchedSelectedGroup;
  }

  void toggleTaskIsDone(Task task) {
    var newTask = task.copyWith(isDone: !task.isDone);

    _tasksBloc.add(TasksEvent.update(newTask));

    var group = _pickGroup(task.groupId);
    if (group == null) return;

    var groupTasks = [...group.tasks].map(
      (t) => t.id == task.id ? newTask : t,
    );

    _groupsBloc.add(GroupsEvent.update(
      group.copyWith(tasks: groupTasks.toList()),
    ));
  }

  void addTask(String title, String description) {
    _tasksBloc.add(TasksEvent.add("title", "description", selectedGroup));

    var group = _pickGroup(selectedGroup);
    if (group == null) return;

    _groupsBloc.add(GroupsEvent.update(group));
  }

  void removeTask(Task task) {
    _tasksBloc.add(TasksEvent.delete(task.id));

    var group = _pickGroup(task.groupId);
    if (group == null) return;

    var groupTasks = [...group.tasks].where((t) => t.id != task.id);

    _groupsBloc.add(GroupsEvent.update(
      group.copyWith(tasks: groupTasks.toList()),
    ));
  }

  Group? _pickGroup(int? groupId) {
    Group group;

    try {
      group = _ctx
          .read<GroupsBloc>()
          .state
          .groups
          .firstWhere((g) => g.id == groupId);

      return group;
    } on StateError {
      return null;
    }
  }
}
