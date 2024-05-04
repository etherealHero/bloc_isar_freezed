import 'package:isar/isar.dart';

part 'task.g.dart';

@collection
class Task {
  Id? id;
  int order;
  String title;
  String description;
  bool isDone;
  bool isArchived;
  bool isTrash;
  final DateTime _dateCreateUtc;
  DateTime _dateModifyUtc;

  Task({
    required this.title,
    required this.description,
    required this.order,
  })  : isDone = false,
        isArchived = false,
        isTrash = false,
        _dateCreateUtc = DateTime.now().toUtc(),
        _dateModifyUtc = DateTime.now().toUtc();

  DateTime get dateModify => _dateModifyUtc.toLocal();
  DateTime get dateCreate => _dateCreateUtc.toLocal();

  void updateModifyDate() => _dateModifyUtc = DateTime.now().toUtc();
}
