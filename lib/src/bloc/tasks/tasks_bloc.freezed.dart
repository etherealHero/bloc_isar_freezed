// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String title, String description, int? groupId)
        add,
    required TResult Function(Task task) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int? groupId) filterByGroup,
    required TResult Function(int index, int dropIndex) reorderComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title, String description, int? groupId)? add,
    TResult? Function(Task task)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int? groupId)? filterByGroup,
    TResult? Function(int index, int dropIndex)? reorderComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title, String description, int? groupId)? add,
    TResult Function(Task task)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int? groupId)? filterByGroup,
    TResult Function(int index, int dropIndex)? reorderComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_FilterByGroup value) filterByGroup,
    required TResult Function(_ReorderComplete value) reorderComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_FilterByGroup value)? filterByGroup,
    TResult? Function(_ReorderComplete value)? reorderComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_FilterByGroup value)? filterByGroup,
    TResult Function(_ReorderComplete value)? reorderComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res, $Val extends TasksEvent>
    implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllImplCopyWith<$Res> {
  factory _$$GetAllImplCopyWith(
          _$GetAllImpl value, $Res Function(_$GetAllImpl) then) =
      __$$GetAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$GetAllImpl>
    implements _$$GetAllImplCopyWith<$Res> {
  __$$GetAllImplCopyWithImpl(
      _$GetAllImpl _value, $Res Function(_$GetAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllImpl implements _GetAll {
  const _$GetAllImpl();

  @override
  String toString() {
    return 'TasksEvent.getAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String title, String description, int? groupId)
        add,
    required TResult Function(Task task) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int? groupId) filterByGroup,
    required TResult Function(int index, int dropIndex) reorderComplete,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title, String description, int? groupId)? add,
    TResult? Function(Task task)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int? groupId)? filterByGroup,
    TResult? Function(int index, int dropIndex)? reorderComplete,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title, String description, int? groupId)? add,
    TResult Function(Task task)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int? groupId)? filterByGroup,
    TResult Function(int index, int dropIndex)? reorderComplete,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_FilterByGroup value) filterByGroup,
    required TResult Function(_ReorderComplete value) reorderComplete,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_FilterByGroup value)? filterByGroup,
    TResult? Function(_ReorderComplete value)? reorderComplete,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_FilterByGroup value)? filterByGroup,
    TResult Function(_ReorderComplete value)? reorderComplete,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetAll implements TasksEvent {
  const factory _GetAll() = _$GetAllImpl;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description, int? groupId});
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? groupId = freezed,
  }) {
    return _then(_$AddImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl(this.title, this.description, this.groupId);

  @override
  final String title;
  @override
  final String description;
  @override
  final int? groupId;

  @override
  String toString() {
    return 'TasksEvent.add(title: $title, description: $description, groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String title, String description, int? groupId)
        add,
    required TResult Function(Task task) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int? groupId) filterByGroup,
    required TResult Function(int index, int dropIndex) reorderComplete,
  }) {
    return add(title, description, groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title, String description, int? groupId)? add,
    TResult? Function(Task task)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int? groupId)? filterByGroup,
    TResult? Function(int index, int dropIndex)? reorderComplete,
  }) {
    return add?.call(title, description, groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title, String description, int? groupId)? add,
    TResult Function(Task task)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int? groupId)? filterByGroup,
    TResult Function(int index, int dropIndex)? reorderComplete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(title, description, groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_FilterByGroup value) filterByGroup,
    required TResult Function(_ReorderComplete value) reorderComplete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_FilterByGroup value)? filterByGroup,
    TResult? Function(_ReorderComplete value)? reorderComplete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_FilterByGroup value)? filterByGroup,
    TResult Function(_ReorderComplete value)? reorderComplete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements TasksEvent {
  const factory _Add(
          final String title, final String description, final int? groupId) =
      _$AddImpl;

  String get title;
  String get description;
  int? get groupId;
  @JsonKey(ignore: true)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$UpdateImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksEvent.update(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String title, String description, int? groupId)
        add,
    required TResult Function(Task task) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int? groupId) filterByGroup,
    required TResult Function(int index, int dropIndex) reorderComplete,
  }) {
    return update(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title, String description, int? groupId)? add,
    TResult? Function(Task task)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int? groupId)? filterByGroup,
    TResult? Function(int index, int dropIndex)? reorderComplete,
  }) {
    return update?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title, String description, int? groupId)? add,
    TResult Function(Task task)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int? groupId)? filterByGroup,
    TResult Function(int index, int dropIndex)? reorderComplete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_FilterByGroup value) filterByGroup,
    required TResult Function(_ReorderComplete value) reorderComplete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_FilterByGroup value)? filterByGroup,
    TResult? Function(_ReorderComplete value)? reorderComplete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_FilterByGroup value)? filterByGroup,
    TResult Function(_ReorderComplete value)? reorderComplete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements TasksEvent {
  const factory _Update(final Task task) = _$UpdateImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int taskId});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$DeleteImpl(
      null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.taskId);

  @override
  final int taskId;

  @override
  String toString() {
    return 'TasksEvent.delete(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String title, String description, int? groupId)
        add,
    required TResult Function(Task task) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int? groupId) filterByGroup,
    required TResult Function(int index, int dropIndex) reorderComplete,
  }) {
    return delete(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title, String description, int? groupId)? add,
    TResult? Function(Task task)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int? groupId)? filterByGroup,
    TResult? Function(int index, int dropIndex)? reorderComplete,
  }) {
    return delete?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title, String description, int? groupId)? add,
    TResult Function(Task task)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int? groupId)? filterByGroup,
    TResult Function(int index, int dropIndex)? reorderComplete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_FilterByGroup value) filterByGroup,
    required TResult Function(_ReorderComplete value) reorderComplete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_FilterByGroup value)? filterByGroup,
    TResult? Function(_ReorderComplete value)? reorderComplete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_FilterByGroup value)? filterByGroup,
    TResult Function(_ReorderComplete value)? reorderComplete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements TasksEvent {
  const factory _Delete(final int taskId) = _$DeleteImpl;

  int get taskId;
  @JsonKey(ignore: true)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterByGroupImplCopyWith<$Res> {
  factory _$$FilterByGroupImplCopyWith(
          _$FilterByGroupImpl value, $Res Function(_$FilterByGroupImpl) then) =
      __$$FilterByGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? groupId});
}

/// @nodoc
class __$$FilterByGroupImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$FilterByGroupImpl>
    implements _$$FilterByGroupImplCopyWith<$Res> {
  __$$FilterByGroupImplCopyWithImpl(
      _$FilterByGroupImpl _value, $Res Function(_$FilterByGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_$FilterByGroupImpl(
      freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FilterByGroupImpl implements _FilterByGroup {
  const _$FilterByGroupImpl(this.groupId);

  @override
  final int? groupId;

  @override
  String toString() {
    return 'TasksEvent.filterByGroup(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByGroupImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByGroupImplCopyWith<_$FilterByGroupImpl> get copyWith =>
      __$$FilterByGroupImplCopyWithImpl<_$FilterByGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String title, String description, int? groupId)
        add,
    required TResult Function(Task task) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int? groupId) filterByGroup,
    required TResult Function(int index, int dropIndex) reorderComplete,
  }) {
    return filterByGroup(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title, String description, int? groupId)? add,
    TResult? Function(Task task)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int? groupId)? filterByGroup,
    TResult? Function(int index, int dropIndex)? reorderComplete,
  }) {
    return filterByGroup?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title, String description, int? groupId)? add,
    TResult Function(Task task)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int? groupId)? filterByGroup,
    TResult Function(int index, int dropIndex)? reorderComplete,
    required TResult orElse(),
  }) {
    if (filterByGroup != null) {
      return filterByGroup(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_FilterByGroup value) filterByGroup,
    required TResult Function(_ReorderComplete value) reorderComplete,
  }) {
    return filterByGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_FilterByGroup value)? filterByGroup,
    TResult? Function(_ReorderComplete value)? reorderComplete,
  }) {
    return filterByGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_FilterByGroup value)? filterByGroup,
    TResult Function(_ReorderComplete value)? reorderComplete,
    required TResult orElse(),
  }) {
    if (filterByGroup != null) {
      return filterByGroup(this);
    }
    return orElse();
  }
}

abstract class _FilterByGroup implements TasksEvent {
  const factory _FilterByGroup(final int? groupId) = _$FilterByGroupImpl;

  int? get groupId;
  @JsonKey(ignore: true)
  _$$FilterByGroupImplCopyWith<_$FilterByGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReorderCompleteImplCopyWith<$Res> {
  factory _$$ReorderCompleteImplCopyWith(_$ReorderCompleteImpl value,
          $Res Function(_$ReorderCompleteImpl) then) =
      __$$ReorderCompleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, int dropIndex});
}

/// @nodoc
class __$$ReorderCompleteImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$ReorderCompleteImpl>
    implements _$$ReorderCompleteImplCopyWith<$Res> {
  __$$ReorderCompleteImplCopyWithImpl(
      _$ReorderCompleteImpl _value, $Res Function(_$ReorderCompleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? dropIndex = null,
  }) {
    return _then(_$ReorderCompleteImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == dropIndex
          ? _value.dropIndex
          : dropIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReorderCompleteImpl implements _ReorderComplete {
  const _$ReorderCompleteImpl(this.index, this.dropIndex);

  @override
  final int index;
  @override
  final int dropIndex;

  @override
  String toString() {
    return 'TasksEvent.reorderComplete(index: $index, dropIndex: $dropIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReorderCompleteImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.dropIndex, dropIndex) ||
                other.dropIndex == dropIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, dropIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReorderCompleteImplCopyWith<_$ReorderCompleteImpl> get copyWith =>
      __$$ReorderCompleteImplCopyWithImpl<_$ReorderCompleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String title, String description, int? groupId)
        add,
    required TResult Function(Task task) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int? groupId) filterByGroup,
    required TResult Function(int index, int dropIndex) reorderComplete,
  }) {
    return reorderComplete(index, dropIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title, String description, int? groupId)? add,
    TResult? Function(Task task)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int? groupId)? filterByGroup,
    TResult? Function(int index, int dropIndex)? reorderComplete,
  }) {
    return reorderComplete?.call(index, dropIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title, String description, int? groupId)? add,
    TResult Function(Task task)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int? groupId)? filterByGroup,
    TResult Function(int index, int dropIndex)? reorderComplete,
    required TResult orElse(),
  }) {
    if (reorderComplete != null) {
      return reorderComplete(index, dropIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_FilterByGroup value) filterByGroup,
    required TResult Function(_ReorderComplete value) reorderComplete,
  }) {
    return reorderComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_FilterByGroup value)? filterByGroup,
    TResult? Function(_ReorderComplete value)? reorderComplete,
  }) {
    return reorderComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_FilterByGroup value)? filterByGroup,
    TResult Function(_ReorderComplete value)? reorderComplete,
    required TResult orElse(),
  }) {
    if (reorderComplete != null) {
      return reorderComplete(this);
    }
    return orElse();
  }
}

abstract class _ReorderComplete implements TasksEvent {
  const factory _ReorderComplete(final int index, final int dropIndex) =
      _$ReorderCompleteImpl;

  int get index;
  int get dropIndex;
  @JsonKey(ignore: true)
  _$$ReorderCompleteImplCopyWith<_$ReorderCompleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksState {
  List<Task> get tasks => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksStateCopyWith<TasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
  @useResult
  $Res call({List<Task> tasks, bool isFetching});
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? isFetching = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksStateImplCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$TasksStateImplCopyWith(
          _$TasksStateImpl value, $Res Function(_$TasksStateImpl) then) =
      __$$TasksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Task> tasks, bool isFetching});
}

/// @nodoc
class __$$TasksStateImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksStateImpl>
    implements _$$TasksStateImplCopyWith<$Res> {
  __$$TasksStateImplCopyWithImpl(
      _$TasksStateImpl _value, $Res Function(_$TasksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? isFetching = null,
  }) {
    return _then(_$TasksStateImpl(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TasksStateImpl extends _TasksState {
  const _$TasksStateImpl(final List<Task> tasks, this.isFetching)
      : _tasks = tasks,
        super._();

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final bool isFetching;

  @override
  String toString() {
    return 'TasksState(tasks: $tasks, isFetching: $isFetching)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tasks), isFetching);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksStateImplCopyWith<_$TasksStateImpl> get copyWith =>
      __$$TasksStateImplCopyWithImpl<_$TasksStateImpl>(this, _$identity);
}

abstract class _TasksState extends TasksState {
  const factory _TasksState(final List<Task> tasks, final bool isFetching) =
      _$TasksStateImpl;
  const _TasksState._() : super._();

  @override
  List<Task> get tasks;
  @override
  bool get isFetching;
  @override
  @JsonKey(ignore: true)
  _$$TasksStateImplCopyWith<_$TasksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
