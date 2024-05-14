import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'group.g.dart';
part 'group.freezed.dart';

@freezed
class Group with _$Group {
  @JsonSerializable()
  factory Group({
    required int id,
    required String title,
    required DateTime dateCreateUtc,
    required DateTime dateModifyUtc,
    required int order,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

  Group._();
}

extension GroupExtension on Group {
  GroupDTO toDTO() => GroupDTO(
        id: id,
        title: title,
        dateCreateUtc: dateCreateUtc,
        dateModifyUtc: dateModifyUtc,
        order: order,
      );
}

@collection
class GroupDTO {
  Id? id;
  String title;
  DateTime dateCreateUtc;
  DateTime dateModifyUtc;
  int order;

  GroupDTO({
    this.id,
    required this.title,
    required this.dateCreateUtc,
    required this.dateModifyUtc,
    required this.order,
  });

  // TODO: backlinks todos
}

extension GroupDTOExtension on GroupDTO {
  Group toEntity() {
    return Group(
      id: id!,
      title: title,
      dateCreateUtc: dateCreateUtc,
      dateModifyUtc: dateModifyUtc,
      order: order,
    );
  }
}
