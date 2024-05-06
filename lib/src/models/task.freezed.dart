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
  int get order => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get isArchived => throw _privateConstructorUsedError;
  bool get isTrash => throw _privateConstructorUsedError;
  DateTime get dateCreateUtc => throw _privateConstructorUsedError;
  DateTime get dateModifyUtc => throw _privateConstructorUsedError;

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
      int order,
      String title,
      String description,
      bool isDone,
      bool isArchived,
      bool isTrash,
      DateTime dateCreateUtc,
      DateTime dateModifyUtc});
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
    Object? order = null,
    Object? title = null,
    Object? description = null,
    Object? isDone = null,
    Object? isArchived = null,
    Object? isTrash = null,
    Object? dateCreateUtc = null,
    Object? dateModifyUtc = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
      dateCreateUtc: null == dateCreateUtc
          ? _value.dateCreateUtc
          : dateCreateUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateModifyUtc: null == dateModifyUtc
          ? _value.dateModifyUtc
          : dateModifyUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      int order,
      String title,
      String description,
      bool isDone,
      bool isArchived,
      bool isTrash,
      DateTime dateCreateUtc,
      DateTime dateModifyUtc});
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
    Object? order = null,
    Object? title = null,
    Object? description = null,
    Object? isDone = null,
    Object? isArchived = null,
    Object? isTrash = null,
    Object? dateCreateUtc = null,
    Object? dateModifyUtc = null,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
      dateCreateUtc: null == dateCreateUtc
          ? _value.dateCreateUtc
          : dateCreateUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateModifyUtc: null == dateModifyUtc
          ? _value.dateModifyUtc
          : dateModifyUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$TaskImpl extends _Task {
  const _$TaskImpl(
      {this.id = Isar.autoIncrement,
      required this.order,
      required this.title,
      required this.description,
      this.isDone = false,
      this.isArchived = false,
      this.isTrash = false,
      required this.dateCreateUtc,
      required this.dateModifyUtc})
      : super._();

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final int order;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey()
  final bool isDone;
  @override
  @JsonKey()
  final bool isArchived;
  @override
  @JsonKey()
  final bool isTrash;
  @override
  final DateTime dateCreateUtc;
  @override
  final DateTime dateModifyUtc;

  @override
  String toString() {
    return 'Task(id: $id, order: $order, title: $title, description: $description, isDone: $isDone, isArchived: $isArchived, isTrash: $isTrash, dateCreateUtc: $dateCreateUtc, dateModifyUtc: $dateModifyUtc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.isArchived, isArchived) ||
                other.isArchived == isArchived) &&
            (identical(other.isTrash, isTrash) || other.isTrash == isTrash) &&
            (identical(other.dateCreateUtc, dateCreateUtc) ||
                other.dateCreateUtc == dateCreateUtc) &&
            (identical(other.dateModifyUtc, dateModifyUtc) ||
                other.dateModifyUtc == dateModifyUtc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, order, title, description,
      isDone, isArchived, isTrash, dateCreateUtc, dateModifyUtc);

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
  const factory _Task(
      {final int id,
      required final int order,
      required final String title,
      required final String description,
      final bool isDone,
      final bool isArchived,
      final bool isTrash,
      required final DateTime dateCreateUtc,
      required final DateTime dateModifyUtc}) = _$TaskImpl;
  const _Task._() : super._();

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  int get id;
  @override
  int get order;
  @override
  String get title;
  @override
  String get description;
  @override
  bool get isDone;
  @override
  bool get isArchived;
  @override
  bool get isTrash;
  @override
  DateTime get dateCreateUtc;
  @override
  DateTime get dateModifyUtc;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
