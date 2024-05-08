import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'group.g.dart';
part 'group.freezed.dart';

@freezed
@Collection(ignore: {'copyWith'})
class Group with _$Group {
  Group._();

  @JsonSerializable()
  factory Group({
    int? id,
    required String title,
    required DateTime dateCreateUtc,
    required DateTime dateModifyUtc,
    required int order,
    @ignore @Default(false) bool isSelected,
  }) = _Group;

  @override
  // ignore: recursive_getters
  Id? get id => id;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

  updateModifyDate() => copyWith(dateModifyUtc: DateTime.now().toUtc());
}
