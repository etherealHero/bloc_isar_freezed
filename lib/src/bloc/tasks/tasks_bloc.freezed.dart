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
    required TResult Function(String title, String description) add,
    required TResult Function(Task task) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int index, int dropIndex) reorderComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title, String description)? add,
    TResult? Function(Task task)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int index, int dropIndex)? reorderComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title, String description)? add,
    TResult Function(Task task)? update,
    TResult Function(int taskId)? delete,
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
    required TResult Function(_ReorderComplete value) reorderComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_ReorderComplete value)? reorderComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
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
    required TResult Function(String title, String description) add,
    required TResult Function(Task task) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int index, int dropIndex) reorderComplete,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title, String description)? add,
    TResult? Function(Task task)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int index, int dropIndex)? reorderComplete,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title, String description)? add,
    TResult Function(Task task)? update,
    TResult Function(int taskId)? delete,
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
  $Res call({String title, String description});
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
    ));
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl(this.title, this.description);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'TasksEvent.add(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String title, String description) add,
    required TResult Function(Task task) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int index, int dropIndex) reorderComplete,
  }) {
    return add(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title, String description)? add,
    TResult? Function(Task task)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int index, int dropIndex)? reorderComplete,
  }) {
    return add?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title, String description)? add,
    TResult Function(Task task)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int index, int dropIndex)? reorderComplete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(title, description);
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
  const factory _Add(final String title, final String description) = _$AddImpl;

  String get title;
  String get description;
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
    required TResult Function(String title, String description) add,
    required TResult Function(Task task) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int index, int dropIndex) reorderComplete,
  }) {
    return update(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title, String description)? add,
    TResult? Function(Task task)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int index, int dropIndex)? reorderComplete,
  }) {
    return update?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title, String description)? add,
    TResult Function(Task task)? update,
    TResult Function(int taskId)? delete,
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
    required TResult Function(String title, String description) add,
    required TResult Function(Task task) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int index, int dropIndex) reorderComplete,
  }) {
    return delete(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title, String description)? add,
    TResult? Function(Task task)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int index, int dropIndex)? reorderComplete,
  }) {
    return delete?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title, String description)? add,
    TResult Function(Task task)? update,
    TResult Function(int taskId)? delete,
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
    required TResult Function(String title, String description) add,
    required TResult Function(Task task) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int index, int dropIndex) reorderComplete,
  }) {
    return reorderComplete(index, dropIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title, String description)? add,
    TResult? Function(Task task)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int index, int dropIndex)? reorderComplete,
  }) {
    return reorderComplete?.call(index, dropIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title, String description)? add,
    TResult Function(Task task)? update,
    TResult Function(int taskId)? delete,
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks) initial,
    required TResult Function(List<Task> tasks) loaded,
    required TResult Function(List<Task> tasks, int from, int to) reordered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Task> tasks)? initial,
    TResult? Function(List<Task> tasks)? loaded,
    TResult? Function(List<Task> tasks, int from, int to)? reordered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks)? initial,
    TResult Function(List<Task> tasks)? loaded,
    TResult Function(List<Task> tasks, int from, int to)? reordered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInitial value) initial,
    required TResult Function(TasksLoaded value) loaded,
    required TResult Function(TasksReordered value) reordered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitial value)? initial,
    TResult? Function(TasksLoaded value)? loaded,
    TResult? Function(TasksReordered value)? reordered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitial value)? initial,
    TResult Function(TasksLoaded value)? loaded,
    TResult Function(TasksReordered value)? reordered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
  $Res call({List<Task> tasks});
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
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksInitialImplCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$TasksInitialImplCopyWith(
          _$TasksInitialImpl value, $Res Function(_$TasksInitialImpl) then) =
      __$$TasksInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Task> tasks});
}

/// @nodoc
class __$$TasksInitialImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksInitialImpl>
    implements _$$TasksInitialImplCopyWith<$Res> {
  __$$TasksInitialImplCopyWithImpl(
      _$TasksInitialImpl _value, $Res Function(_$TasksInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TasksInitialImpl(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$TasksInitialImpl implements TasksInitial {
  _$TasksInitialImpl(final List<Task> tasks) : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TasksState.initial(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksInitialImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksInitialImplCopyWith<_$TasksInitialImpl> get copyWith =>
      __$$TasksInitialImplCopyWithImpl<_$TasksInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks) initial,
    required TResult Function(List<Task> tasks) loaded,
    required TResult Function(List<Task> tasks, int from, int to) reordered,
  }) {
    return initial(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Task> tasks)? initial,
    TResult? Function(List<Task> tasks)? loaded,
    TResult? Function(List<Task> tasks, int from, int to)? reordered,
  }) {
    return initial?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks)? initial,
    TResult Function(List<Task> tasks)? loaded,
    TResult Function(List<Task> tasks, int from, int to)? reordered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInitial value) initial,
    required TResult Function(TasksLoaded value) loaded,
    required TResult Function(TasksReordered value) reordered,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitial value)? initial,
    TResult? Function(TasksLoaded value)? loaded,
    TResult? Function(TasksReordered value)? reordered,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitial value)? initial,
    TResult Function(TasksLoaded value)? loaded,
    TResult Function(TasksReordered value)? reordered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TasksInitial implements TasksState {
  factory TasksInitial(final List<Task> tasks) = _$TasksInitialImpl;

  @override
  List<Task> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$TasksInitialImplCopyWith<_$TasksInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksLoadedImplCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$TasksLoadedImplCopyWith(
          _$TasksLoadedImpl value, $Res Function(_$TasksLoadedImpl) then) =
      __$$TasksLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Task> tasks});
}

/// @nodoc
class __$$TasksLoadedImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksLoadedImpl>
    implements _$$TasksLoadedImplCopyWith<$Res> {
  __$$TasksLoadedImplCopyWithImpl(
      _$TasksLoadedImpl _value, $Res Function(_$TasksLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TasksLoadedImpl(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$TasksLoadedImpl implements TasksLoaded {
  _$TasksLoadedImpl(final List<Task> tasks) : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TasksState.loaded(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksLoadedImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksLoadedImplCopyWith<_$TasksLoadedImpl> get copyWith =>
      __$$TasksLoadedImplCopyWithImpl<_$TasksLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks) initial,
    required TResult Function(List<Task> tasks) loaded,
    required TResult Function(List<Task> tasks, int from, int to) reordered,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Task> tasks)? initial,
    TResult? Function(List<Task> tasks)? loaded,
    TResult? Function(List<Task> tasks, int from, int to)? reordered,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks)? initial,
    TResult Function(List<Task> tasks)? loaded,
    TResult Function(List<Task> tasks, int from, int to)? reordered,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInitial value) initial,
    required TResult Function(TasksLoaded value) loaded,
    required TResult Function(TasksReordered value) reordered,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitial value)? initial,
    TResult? Function(TasksLoaded value)? loaded,
    TResult? Function(TasksReordered value)? reordered,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitial value)? initial,
    TResult Function(TasksLoaded value)? loaded,
    TResult Function(TasksReordered value)? reordered,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TasksLoaded implements TasksState {
  factory TasksLoaded(final List<Task> tasks) = _$TasksLoadedImpl;

  @override
  List<Task> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$TasksLoadedImplCopyWith<_$TasksLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksReorderedImplCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$TasksReorderedImplCopyWith(_$TasksReorderedImpl value,
          $Res Function(_$TasksReorderedImpl) then) =
      __$$TasksReorderedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Task> tasks, int from, int to});
}

/// @nodoc
class __$$TasksReorderedImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksReorderedImpl>
    implements _$$TasksReorderedImplCopyWith<$Res> {
  __$$TasksReorderedImplCopyWithImpl(
      _$TasksReorderedImpl _value, $Res Function(_$TasksReorderedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$TasksReorderedImpl(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TasksReorderedImpl implements TasksReordered {
  _$TasksReorderedImpl(final List<Task> tasks, this.from, this.to)
      : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final int from;
  @override
  final int to;

  @override
  String toString() {
    return 'TasksState.reordered(tasks: $tasks, from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksReorderedImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tasks), from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksReorderedImplCopyWith<_$TasksReorderedImpl> get copyWith =>
      __$$TasksReorderedImplCopyWithImpl<_$TasksReorderedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks) initial,
    required TResult Function(List<Task> tasks) loaded,
    required TResult Function(List<Task> tasks, int from, int to) reordered,
  }) {
    return reordered(tasks, from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Task> tasks)? initial,
    TResult? Function(List<Task> tasks)? loaded,
    TResult? Function(List<Task> tasks, int from, int to)? reordered,
  }) {
    return reordered?.call(tasks, from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks)? initial,
    TResult Function(List<Task> tasks)? loaded,
    TResult Function(List<Task> tasks, int from, int to)? reordered,
    required TResult orElse(),
  }) {
    if (reordered != null) {
      return reordered(tasks, from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInitial value) initial,
    required TResult Function(TasksLoaded value) loaded,
    required TResult Function(TasksReordered value) reordered,
  }) {
    return reordered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitial value)? initial,
    TResult? Function(TasksLoaded value)? loaded,
    TResult? Function(TasksReordered value)? reordered,
  }) {
    return reordered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitial value)? initial,
    TResult Function(TasksLoaded value)? loaded,
    TResult Function(TasksReordered value)? reordered,
    required TResult orElse(),
  }) {
    if (reordered != null) {
      return reordered(this);
    }
    return orElse();
  }
}

abstract class TasksReordered implements TasksState {
  factory TasksReordered(final List<Task> tasks, final int from, final int to) =
      _$TasksReorderedImpl;

  @override
  List<Task> get tasks;
  int get from;
  int get to;
  @override
  @JsonKey(ignore: true)
  _$$TasksReorderedImplCopyWith<_$TasksReorderedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
