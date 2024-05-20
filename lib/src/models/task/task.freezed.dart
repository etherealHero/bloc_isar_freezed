// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  int get id => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get isArchived => throw _privateConstructorUsedError;
  bool get isTrash => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get dateCreateUtc => throw _privateConstructorUsedError;
  DateTime get dateModifyUtc => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  int? get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {int id,
      bool isDone,
      bool isArchived,
      bool isTrash,
      String title,
      String description,
      DateTime dateCreateUtc,
      DateTime dateModifyUtc,
      int order,
      int? groupId});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isDone = null,
    Object? isArchived = null,
    Object? isTrash = null,
    Object? title = null,
    Object? description = null,
    Object? dateCreateUtc = null,
    Object? dateModifyUtc = null,
    Object? order = null,
    Object? groupId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isArchived: null == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrash: null == isTrash
          ? _value.isTrash
          : isTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreateUtc: null == dateCreateUtc
          ? _value.dateCreateUtc
          : dateCreateUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateModifyUtc: null == dateModifyUtc
          ? _value.dateModifyUtc
          : dateModifyUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool isDone,
      bool isArchived,
      bool isTrash,
      String title,
      String description,
      DateTime dateCreateUtc,
      DateTime dateModifyUtc,
      int order,
      int? groupId});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isDone = null,
    Object? isArchived = null,
    Object? isTrash = null,
    Object? title = null,
    Object? description = null,
    Object? dateCreateUtc = null,
    Object? dateModifyUtc = null,
    Object? order = null,
    Object? groupId = freezed,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isArchived: null == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrash: null == isTrash
          ? _value.isTrash
          : isTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreateUtc: null == dateCreateUtc
          ? _value.dateCreateUtc
          : dateCreateUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateModifyUtc: null == dateModifyUtc
          ? _value.dateModifyUtc
          : dateModifyUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$TaskImpl extends _Task {
  _$TaskImpl(
      {required this.id,
      required this.isDone,
      required this.isArchived,
      required this.isTrash,
      required this.title,
      required this.description,
      required this.dateCreateUtc,
      required this.dateModifyUtc,
      required this.order,
      required this.groupId})
      : super._();

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final int id;
  @override
  final bool isDone;
  @override
  final bool isArchived;
  @override
  final bool isTrash;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime dateCreateUtc;
  @override
  final DateTime dateModifyUtc;
  @override
  final int order;
  @override
  final int? groupId;

  @override
  String toString() {
    return 'Task(id: $id, isDone: $isDone, isArchived: $isArchived, isTrash: $isTrash, title: $title, description: $description, dateCreateUtc: $dateCreateUtc, dateModifyUtc: $dateModifyUtc, order: $order, groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.isArchived, isArchived) ||
                other.isArchived == isArchived) &&
            (identical(other.isTrash, isTrash) || other.isTrash == isTrash) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dateCreateUtc, dateCreateUtc) ||
                other.dateCreateUtc == dateCreateUtc) &&
            (identical(other.dateModifyUtc, dateModifyUtc) ||
                other.dateModifyUtc == dateModifyUtc) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, isDone, isArchived, isTrash,
      title, description, dateCreateUtc, dateModifyUtc, order, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task extends Task {
  factory _Task(
      {required final int id,
      required final bool isDone,
      required final bool isArchived,
      required final bool isTrash,
      required final String title,
      required final String description,
      required final DateTime dateCreateUtc,
      required final DateTime dateModifyUtc,
      required final int order,
      required final int? groupId}) = _$TaskImpl;
  _Task._() : super._();

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  int get id;
  @override
  bool get isDone;
  @override
  bool get isArchived;
  @override
  bool get isTrash;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get dateCreateUtc;
  @override
  DateTime get dateModifyUtc;
  @override
  int get order;
  @override
  int? get groupId;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
