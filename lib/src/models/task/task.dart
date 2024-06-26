import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../group/group.dart';

part 'task.g.dart';
part 'task.freezed.dart';

@freezed
class Task with _$Task {
  @JsonSerializable()
  factory Task({
    required int id,
    required bool isDone,
    required bool isArchived,
    required bool isTrash,
    required String title,
    required String description,
    required DateTime dateCreateUtc,
    required DateTime dateModifyUtc,
    required int order,
    required int? groupId,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Task._();
}

extension TaskExtension on Task {
  TaskDTO toDTO() => TaskDTO(
        id: id,
        isDone: isDone,
        isArchived: isArchived,
        isTrash: isTrash,
        title: title,
        description: description,
        dateCreateUtc: dateCreateUtc,
        dateModifyUtc: dateModifyUtc,
        order: order,
        groupId: groupId,
      );
}

@collection
class TaskDTO {
  Id? id;
  bool isDone;
  bool isArchived;
  bool isTrash;
  String title;
  String description;
  DateTime dateCreateUtc;
  DateTime dateModifyUtc;
  int order;
  int? groupId;

  TaskDTO({
    this.id,
    required this.isDone,
    required this.isArchived,
    required this.isTrash,
    required this.title,
    required this.description,
    required this.dateCreateUtc,
    required this.dateModifyUtc,
    required this.order,
    required this.groupId,
  });

  final group = IsarLink<GroupDTO>();
}

extension TaskDTOExtension on TaskDTO {
  Task toEntity() {
    return Task(
      id: id!,
      isDone: isDone,
      isArchived: isArchived,
      isTrash: isTrash,
      title: title,
      description: description,
      dateCreateUtc: dateCreateUtc,
      dateModifyUtc: dateModifyUtc,
      order: order,
      groupId: groupId,
    );
  }
}
