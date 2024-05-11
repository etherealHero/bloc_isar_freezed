import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../group/group.dart';

part 'task.g.dart';
part 'task.freezed.dart';

@freezed
@Collection(ignore: {'copyWith'})
class Task with _$Task {
  Task._();

  @JsonSerializable()
  factory Task({
    int? id,
    @Default(false) bool isDone,
    @Default(false) bool isArchived,
    @Default(false) bool isTrash,
    required String title,
    required String description,
    required DateTime dateCreateUtc,
    required DateTime dateModifyUtc,
    required int order,
  }) = _Task;

  @override
  // ignore: recursive_getters
  Id? get id => id;

  final group = IsarLink<Group>();

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  updateModifyDate() => copyWith(dateModifyUtc: DateTime.now().toUtc());
}
