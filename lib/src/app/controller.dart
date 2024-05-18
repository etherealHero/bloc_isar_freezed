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

  void addGroup(String title, int color) {
    _groupsBloc.add(GroupsEvent.add(title, color));
  }

  void removeGroup(Group group) {
    for (var task in group.tasks) {
      _tasksBloc.add(TasksEvent.delete(task.id));
    }

    _groupsBloc.add(GroupsEvent.delete(group.id));

    if (group.id == selectedGroup) selectedGroup = null;
  }

  void changeGroupColor(Group group, int color) {
    var newGroup = group.copyWith(color: color);

    _groupsBloc.add(GroupsEvent.update(newGroup, () {
      var tasks = _pickTasks(newGroup.id);
      var group = _pickGroup(newGroup.id);

      for (var task in group!.tasks) {
        _tasksBloc.add(TasksEvent.update(task));
      }

      for (var task in tasks) {
        _tasksBloc.add(TasksEvent.update(task));
      }
    }));
  }

  void toggleGroupIsSelected(Group group, int? currentSelectedGroup) {
    var patchedSelectedGroup =
        currentSelectedGroup == group.id ? null : group.id;

    selectedGroup = patchedSelectedGroup;
  }

  void toggleTaskIsDone(Task task) {
    var newTask = task.copyWith(isDone: !task.isDone);

    _tasksBloc.add(TasksEvent.update(newTask));

    var group = _pickGroup(task.group?.id);
    if (group == null) return;

    var groupTasks = [...group.tasks].map(
      (t) => t.id == task.id ? newTask : t,
    );

    _groupsBloc.add(
        GroupsEvent.update(group.copyWith(tasks: groupTasks.toList()), null));
  }

  void addTask(String title, String description) {
    _tasksBloc.add(TasksEvent.add("title", "description", selectedGroup));

    var group = _pickGroup(selectedGroup);
    if (group == null) return;

    _groupsBloc.add(GroupsEvent.update(group, null));
  }

  void removeTask(Task task) {
    _tasksBloc.add(TasksEvent.delete(task.id));

    var group = _pickGroup(task.group?.id);
    if (group == null) return;

    var groupTasks = [...group.tasks].where((t) => t.id != task.id);

    _groupsBloc.add(GroupsEvent.update(
      group.copyWith(tasks: groupTasks.toList()),
      null,
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

  List<Task> _pickTasks(int? groupId) {
    List<Task> tasks;

    tasks = _ctx
        .read<TasksBloc>()
        .state
        .tasks
        .where((t) => t.group?.id == groupId)
        .toList();

    return tasks;
  }
}
