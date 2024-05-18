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
    required TResult Function(List<int> ids) getSublist,
    required TResult Function(Task task, void Function()? cb) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int id, int dropId) reorderComplete,
    required TResult Function(String title, String description, Group? group)
        add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(List<int> ids)? getSublist,
    TResult? Function(Task task, void Function()? cb)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int id, int dropId)? reorderComplete,
    TResult? Function(String title, String description, Group? group)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(List<int> ids)? getSublist,
    TResult Function(Task task, void Function()? cb)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int id, int dropId)? reorderComplete,
    TResult Function(String title, String description, Group? group)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetSublist value) getSublist,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ReorderComplete value) reorderComplete,
    required TResult Function(_Add value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_GetSublist value)? getSublist,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_ReorderComplete value)? reorderComplete,
    TResult? Function(_Add value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetSublist value)? getSublist,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_ReorderComplete value)? reorderComplete,
    TResult Function(_Add value)? add,
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
    required TResult Function(List<int> ids) getSublist,
    required TResult Function(Task task, void Function()? cb) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int id, int dropId) reorderComplete,
    required TResult Function(String title, String description, Group? group)
        add,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(List<int> ids)? getSublist,
    TResult? Function(Task task, void Function()? cb)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int id, int dropId)? reorderComplete,
    TResult? Function(String title, String description, Group? group)? add,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(List<int> ids)? getSublist,
    TResult Function(Task task, void Function()? cb)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int id, int dropId)? reorderComplete,
    TResult Function(String title, String description, Group? group)? add,
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
    required TResult Function(_GetSublist value) getSublist,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ReorderComplete value) reorderComplete,
    required TResult Function(_Add value) add,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_GetSublist value)? getSublist,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_ReorderComplete value)? reorderComplete,
    TResult? Function(_Add value)? add,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetSublist value)? getSublist,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_ReorderComplete value)? reorderComplete,
    TResult Function(_Add value)? add,
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
abstract class _$$GetSublistImplCopyWith<$Res> {
  factory _$$GetSublistImplCopyWith(
          _$GetSublistImpl value, $Res Function(_$GetSublistImpl) then) =
      __$$GetSublistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class __$$GetSublistImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$GetSublistImpl>
    implements _$$GetSublistImplCopyWith<$Res> {
  __$$GetSublistImplCopyWithImpl(
      _$GetSublistImpl _value, $Res Function(_$GetSublistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$GetSublistImpl(
      null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$GetSublistImpl implements _GetSublist {
  const _$GetSublistImpl(final List<int> ids) : _ids = ids;

  final List<int> _ids;
  @override
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'TasksEvent.getSublist(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSublistImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSublistImplCopyWith<_$GetSublistImpl> get copyWith =>
      __$$GetSublistImplCopyWithImpl<_$GetSublistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(List<int> ids) getSublist,
    required TResult Function(Task task, void Function()? cb) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int id, int dropId) reorderComplete,
    required TResult Function(String title, String description, Group? group)
        add,
  }) {
    return getSublist(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(List<int> ids)? getSublist,
    TResult? Function(Task task, void Function()? cb)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int id, int dropId)? reorderComplete,
    TResult? Function(String title, String description, Group? group)? add,
  }) {
    return getSublist?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(List<int> ids)? getSublist,
    TResult Function(Task task, void Function()? cb)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int id, int dropId)? reorderComplete,
    TResult Function(String title, String description, Group? group)? add,
    required TResult orElse(),
  }) {
    if (getSublist != null) {
      return getSublist(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetSublist value) getSublist,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ReorderComplete value) reorderComplete,
    required TResult Function(_Add value) add,
  }) {
    return getSublist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_GetSublist value)? getSublist,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_ReorderComplete value)? reorderComplete,
    TResult? Function(_Add value)? add,
  }) {
    return getSublist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetSublist value)? getSublist,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_ReorderComplete value)? reorderComplete,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (getSublist != null) {
      return getSublist(this);
    }
    return orElse();
  }
}

abstract class _GetSublist implements TasksEvent {
  const factory _GetSublist(final List<int> ids) = _$GetSublistImpl;

  List<int> get ids;
  @JsonKey(ignore: true)
  _$$GetSublistImplCopyWith<_$GetSublistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task, void Function()? cb});

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
    Object? cb = freezed,
  }) {
    return _then(_$UpdateImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      freezed == cb
          ? _value.cb
          : cb // ignore: cast_nullable_to_non_nullable
              as void Function()?,
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
  const _$UpdateImpl(this.task, this.cb);

  @override
  final Task task;
  @override
  final void Function()? cb;

  @override
  String toString() {
    return 'TasksEvent.update(task: $task, cb: $cb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.cb, cb) || other.cb == cb));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, cb);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(List<int> ids) getSublist,
    required TResult Function(Task task, void Function()? cb) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int id, int dropId) reorderComplete,
    required TResult Function(String title, String description, Group? group)
        add,
  }) {
    return update(task, cb);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(List<int> ids)? getSublist,
    TResult? Function(Task task, void Function()? cb)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int id, int dropId)? reorderComplete,
    TResult? Function(String title, String description, Group? group)? add,
  }) {
    return update?.call(task, cb);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(List<int> ids)? getSublist,
    TResult Function(Task task, void Function()? cb)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int id, int dropId)? reorderComplete,
    TResult Function(String title, String description, Group? group)? add,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(task, cb);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetSublist value) getSublist,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ReorderComplete value) reorderComplete,
    required TResult Function(_Add value) add,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_GetSublist value)? getSublist,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_ReorderComplete value)? reorderComplete,
    TResult? Function(_Add value)? add,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetSublist value)? getSublist,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_ReorderComplete value)? reorderComplete,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements TasksEvent {
  const factory _Update(final Task task, final void Function()? cb) =
      _$UpdateImpl;

  Task get task;
  void Function()? get cb;
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
    required TResult Function(List<int> ids) getSublist,
    required TResult Function(Task task, void Function()? cb) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int id, int dropId) reorderComplete,
    required TResult Function(String title, String description, Group? group)
        add,
  }) {
    return delete(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(List<int> ids)? getSublist,
    TResult? Function(Task task, void Function()? cb)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int id, int dropId)? reorderComplete,
    TResult? Function(String title, String description, Group? group)? add,
  }) {
    return delete?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(List<int> ids)? getSublist,
    TResult Function(Task task, void Function()? cb)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int id, int dropId)? reorderComplete,
    TResult Function(String title, String description, Group? group)? add,
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
    required TResult Function(_GetSublist value) getSublist,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ReorderComplete value) reorderComplete,
    required TResult Function(_Add value) add,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_GetSublist value)? getSublist,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_ReorderComplete value)? reorderComplete,
    TResult? Function(_Add value)? add,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetSublist value)? getSublist,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_ReorderComplete value)? reorderComplete,
    TResult Function(_Add value)? add,
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
  $Res call({int id, int dropId});
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
    Object? id = null,
    Object? dropId = null,
  }) {
    return _then(_$ReorderCompleteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == dropId
          ? _value.dropId
          : dropId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReorderCompleteImpl implements _ReorderComplete {
  const _$ReorderCompleteImpl(this.id, this.dropId);

  @override
  final int id;
  @override
  final int dropId;

  @override
  String toString() {
    return 'TasksEvent.reorderComplete(id: $id, dropId: $dropId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReorderCompleteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dropId, dropId) || other.dropId == dropId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, dropId);

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
    required TResult Function(List<int> ids) getSublist,
    required TResult Function(Task task, void Function()? cb) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int id, int dropId) reorderComplete,
    required TResult Function(String title, String description, Group? group)
        add,
  }) {
    return reorderComplete(id, dropId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(List<int> ids)? getSublist,
    TResult? Function(Task task, void Function()? cb)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int id, int dropId)? reorderComplete,
    TResult? Function(String title, String description, Group? group)? add,
  }) {
    return reorderComplete?.call(id, dropId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(List<int> ids)? getSublist,
    TResult Function(Task task, void Function()? cb)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int id, int dropId)? reorderComplete,
    TResult Function(String title, String description, Group? group)? add,
    required TResult orElse(),
  }) {
    if (reorderComplete != null) {
      return reorderComplete(id, dropId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetSublist value) getSublist,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ReorderComplete value) reorderComplete,
    required TResult Function(_Add value) add,
  }) {
    return reorderComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_GetSublist value)? getSublist,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_ReorderComplete value)? reorderComplete,
    TResult? Function(_Add value)? add,
  }) {
    return reorderComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetSublist value)? getSublist,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_ReorderComplete value)? reorderComplete,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (reorderComplete != null) {
      return reorderComplete(this);
    }
    return orElse();
  }
}

abstract class _ReorderComplete implements TasksEvent {
  const factory _ReorderComplete(final int id, final int dropId) =
      _$ReorderCompleteImpl;

  int get id;
  int get dropId;
  @JsonKey(ignore: true)
  _$$ReorderCompleteImplCopyWith<_$ReorderCompleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description, Group? group});

  $GroupCopyWith<$Res>? get group;
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
    Object? group = freezed,
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
      freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl(this.title, this.description, this.group);

  @override
  final String title;
  @override
  final String description;
  @override
  final Group? group;

  @override
  String toString() {
    return 'TasksEvent.add(title: $title, description: $description, group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, group);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(List<int> ids) getSublist,
    required TResult Function(Task task, void Function()? cb) update,
    required TResult Function(int taskId) delete,
    required TResult Function(int id, int dropId) reorderComplete,
    required TResult Function(String title, String description, Group? group)
        add,
  }) {
    return add(title, description, group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(List<int> ids)? getSublist,
    TResult? Function(Task task, void Function()? cb)? update,
    TResult? Function(int taskId)? delete,
    TResult? Function(int id, int dropId)? reorderComplete,
    TResult? Function(String title, String description, Group? group)? add,
  }) {
    return add?.call(title, description, group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(List<int> ids)? getSublist,
    TResult Function(Task task, void Function()? cb)? update,
    TResult Function(int taskId)? delete,
    TResult Function(int id, int dropId)? reorderComplete,
    TResult Function(String title, String description, Group? group)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(title, description, group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetSublist value) getSublist,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ReorderComplete value) reorderComplete,
    required TResult Function(_Add value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_GetSublist value)? getSublist,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_ReorderComplete value)? reorderComplete,
    TResult? Function(_Add value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetSublist value)? getSublist,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_ReorderComplete value)? reorderComplete,
    TResult Function(_Add value)? add,
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
          final String title, final String description, final Group? group) =
      _$AddImpl;

  String get title;
  String get description;
  Group? get group;
  @JsonKey(ignore: true)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
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
