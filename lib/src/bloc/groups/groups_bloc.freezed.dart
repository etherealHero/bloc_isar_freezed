// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String title) add,
    required TResult Function(Group group) update,
    required TResult Function(int groupId) delete,
    required TResult Function(
            int index, int dropIndex, void Function(List<Group>) cb)
        reorderComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title)? add,
    TResult? Function(Group group)? update,
    TResult? Function(int groupId)? delete,
    TResult? Function(int index, int dropIndex, void Function(List<Group>) cb)?
        reorderComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title)? add,
    TResult Function(Group group)? update,
    TResult Function(int groupId)? delete,
    TResult Function(int index, int dropIndex, void Function(List<Group>) cb)?
        reorderComplete,
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
abstract class $GroupsEventCopyWith<$Res> {
  factory $GroupsEventCopyWith(
          GroupsEvent value, $Res Function(GroupsEvent) then) =
      _$GroupsEventCopyWithImpl<$Res, GroupsEvent>;
}

/// @nodoc
class _$GroupsEventCopyWithImpl<$Res, $Val extends GroupsEvent>
    implements $GroupsEventCopyWith<$Res> {
  _$GroupsEventCopyWithImpl(this._value, this._then);

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
    extends _$GroupsEventCopyWithImpl<$Res, _$GetAllImpl>
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
    return 'GroupsEvent.getAll()';
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
    required TResult Function(String title) add,
    required TResult Function(Group group) update,
    required TResult Function(int groupId) delete,
    required TResult Function(
            int index, int dropIndex, void Function(List<Group>) cb)
        reorderComplete,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title)? add,
    TResult? Function(Group group)? update,
    TResult? Function(int groupId)? delete,
    TResult? Function(int index, int dropIndex, void Function(List<Group>) cb)?
        reorderComplete,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title)? add,
    TResult Function(Group group)? update,
    TResult Function(int groupId)? delete,
    TResult Function(int index, int dropIndex, void Function(List<Group>) cb)?
        reorderComplete,
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

abstract class _GetAll implements GroupsEvent {
  const factory _GetAll() = _$GetAllImpl;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$AddImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'GroupsEvent.add(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String title) add,
    required TResult Function(Group group) update,
    required TResult Function(int groupId) delete,
    required TResult Function(
            int index, int dropIndex, void Function(List<Group>) cb)
        reorderComplete,
  }) {
    return add(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title)? add,
    TResult? Function(Group group)? update,
    TResult? Function(int groupId)? delete,
    TResult? Function(int index, int dropIndex, void Function(List<Group>) cb)?
        reorderComplete,
  }) {
    return add?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title)? add,
    TResult Function(Group group)? update,
    TResult Function(int groupId)? delete,
    TResult Function(int index, int dropIndex, void Function(List<Group>) cb)?
        reorderComplete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(title);
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

abstract class _Add implements GroupsEvent {
  const factory _Add(final String title) = _$AddImpl;

  String get title;
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
  $Res call({Group group});

  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_$UpdateImpl(
      null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res> get group {
    return $GroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(this.group);

  @override
  final Group group;

  @override
  String toString() {
    return 'GroupsEvent.update(group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String title) add,
    required TResult Function(Group group) update,
    required TResult Function(int groupId) delete,
    required TResult Function(
            int index, int dropIndex, void Function(List<Group>) cb)
        reorderComplete,
  }) {
    return update(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title)? add,
    TResult? Function(Group group)? update,
    TResult? Function(int groupId)? delete,
    TResult? Function(int index, int dropIndex, void Function(List<Group>) cb)?
        reorderComplete,
  }) {
    return update?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title)? add,
    TResult Function(Group group)? update,
    TResult Function(int groupId)? delete,
    TResult Function(int index, int dropIndex, void Function(List<Group>) cb)?
        reorderComplete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(group);
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

abstract class _Update implements GroupsEvent {
  const factory _Update(final Group group) = _$UpdateImpl;

  Group get group;
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
  $Res call({int groupId});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
  }) {
    return _then(_$DeleteImpl(
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.groupId);

  @override
  final int groupId;

  @override
  String toString() {
    return 'GroupsEvent.delete(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String title) add,
    required TResult Function(Group group) update,
    required TResult Function(int groupId) delete,
    required TResult Function(
            int index, int dropIndex, void Function(List<Group>) cb)
        reorderComplete,
  }) {
    return delete(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title)? add,
    TResult? Function(Group group)? update,
    TResult? Function(int groupId)? delete,
    TResult? Function(int index, int dropIndex, void Function(List<Group>) cb)?
        reorderComplete,
  }) {
    return delete?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title)? add,
    TResult Function(Group group)? update,
    TResult Function(int groupId)? delete,
    TResult Function(int index, int dropIndex, void Function(List<Group>) cb)?
        reorderComplete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(groupId);
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

abstract class _Delete implements GroupsEvent {
  const factory _Delete(final int groupId) = _$DeleteImpl;

  int get groupId;
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
  $Res call({int index, int dropIndex, void Function(List<Group>) cb});
}

/// @nodoc
class __$$ReorderCompleteImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$ReorderCompleteImpl>
    implements _$$ReorderCompleteImplCopyWith<$Res> {
  __$$ReorderCompleteImplCopyWithImpl(
      _$ReorderCompleteImpl _value, $Res Function(_$ReorderCompleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? dropIndex = null,
    Object? cb = null,
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
      null == cb
          ? _value.cb
          : cb // ignore: cast_nullable_to_non_nullable
              as void Function(List<Group>),
    ));
  }
}

/// @nodoc

class _$ReorderCompleteImpl implements _ReorderComplete {
  const _$ReorderCompleteImpl(this.index, this.dropIndex, this.cb);

  @override
  final int index;
  @override
  final int dropIndex;
  @override
  final void Function(List<Group>) cb;

  @override
  String toString() {
    return 'GroupsEvent.reorderComplete(index: $index, dropIndex: $dropIndex, cb: $cb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReorderCompleteImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.dropIndex, dropIndex) ||
                other.dropIndex == dropIndex) &&
            (identical(other.cb, cb) || other.cb == cb));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, dropIndex, cb);

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
    required TResult Function(String title) add,
    required TResult Function(Group group) update,
    required TResult Function(int groupId) delete,
    required TResult Function(
            int index, int dropIndex, void Function(List<Group>) cb)
        reorderComplete,
  }) {
    return reorderComplete(index, dropIndex, cb);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String title)? add,
    TResult? Function(Group group)? update,
    TResult? Function(int groupId)? delete,
    TResult? Function(int index, int dropIndex, void Function(List<Group>) cb)?
        reorderComplete,
  }) {
    return reorderComplete?.call(index, dropIndex, cb);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String title)? add,
    TResult Function(Group group)? update,
    TResult Function(int groupId)? delete,
    TResult Function(int index, int dropIndex, void Function(List<Group>) cb)?
        reorderComplete,
    required TResult orElse(),
  }) {
    if (reorderComplete != null) {
      return reorderComplete(index, dropIndex, cb);
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

abstract class _ReorderComplete implements GroupsEvent {
  const factory _ReorderComplete(final int index, final int dropIndex,
      final void Function(List<Group>) cb) = _$ReorderCompleteImpl;

  int get index;
  int get dropIndex;
  void Function(List<Group>) get cb;
  @JsonKey(ignore: true)
  _$$ReorderCompleteImplCopyWith<_$ReorderCompleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupsState {
  List<Group> get groups => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Group> groups) initial,
    required TResult Function(List<Group> groups) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Group> groups)? initial,
    TResult? Function(List<Group> groups)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Group> groups)? initial,
    TResult Function(List<Group> groups)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupsInitial value) initial,
    required TResult Function(GroupsLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsInitial value)? initial,
    TResult? Function(GroupsLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsInitial value)? initial,
    TResult Function(GroupsLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupsStateCopyWith<GroupsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsStateCopyWith<$Res> {
  factory $GroupsStateCopyWith(
          GroupsState value, $Res Function(GroupsState) then) =
      _$GroupsStateCopyWithImpl<$Res, GroupsState>;
  @useResult
  $Res call({List<Group> groups});
}

/// @nodoc
class _$GroupsStateCopyWithImpl<$Res, $Val extends GroupsState>
    implements $GroupsStateCopyWith<$Res> {
  _$GroupsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_value.copyWith(
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupsInitialImplCopyWith<$Res>
    implements $GroupsStateCopyWith<$Res> {
  factory _$$GroupsInitialImplCopyWith(
          _$GroupsInitialImpl value, $Res Function(_$GroupsInitialImpl) then) =
      __$$GroupsInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Group> groups});
}

/// @nodoc
class __$$GroupsInitialImplCopyWithImpl<$Res>
    extends _$GroupsStateCopyWithImpl<$Res, _$GroupsInitialImpl>
    implements _$$GroupsInitialImplCopyWith<$Res> {
  __$$GroupsInitialImplCopyWithImpl(
      _$GroupsInitialImpl _value, $Res Function(_$GroupsInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$GroupsInitialImpl(
      null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc

class _$GroupsInitialImpl implements GroupsInitial {
  _$GroupsInitialImpl(final List<Group> groups) : _groups = groups;

  final List<Group> _groups;
  @override
  List<Group> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'GroupsState.initial(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsInitialImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupsInitialImplCopyWith<_$GroupsInitialImpl> get copyWith =>
      __$$GroupsInitialImplCopyWithImpl<_$GroupsInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Group> groups) initial,
    required TResult Function(List<Group> groups) loaded,
  }) {
    return initial(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Group> groups)? initial,
    TResult? Function(List<Group> groups)? loaded,
  }) {
    return initial?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Group> groups)? initial,
    TResult Function(List<Group> groups)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupsInitial value) initial,
    required TResult Function(GroupsLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsInitial value)? initial,
    TResult? Function(GroupsLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsInitial value)? initial,
    TResult Function(GroupsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GroupsInitial implements GroupsState {
  factory GroupsInitial(final List<Group> groups) = _$GroupsInitialImpl;

  @override
  List<Group> get groups;
  @override
  @JsonKey(ignore: true)
  _$$GroupsInitialImplCopyWith<_$GroupsInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupsLoadedImplCopyWith<$Res>
    implements $GroupsStateCopyWith<$Res> {
  factory _$$GroupsLoadedImplCopyWith(
          _$GroupsLoadedImpl value, $Res Function(_$GroupsLoadedImpl) then) =
      __$$GroupsLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Group> groups});
}

/// @nodoc
class __$$GroupsLoadedImplCopyWithImpl<$Res>
    extends _$GroupsStateCopyWithImpl<$Res, _$GroupsLoadedImpl>
    implements _$$GroupsLoadedImplCopyWith<$Res> {
  __$$GroupsLoadedImplCopyWithImpl(
      _$GroupsLoadedImpl _value, $Res Function(_$GroupsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$GroupsLoadedImpl(
      null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc

class _$GroupsLoadedImpl implements GroupsLoaded {
  _$GroupsLoadedImpl(final List<Group> groups) : _groups = groups;

  final List<Group> _groups;
  @override
  List<Group> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'GroupsState.loaded(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsLoadedImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupsLoadedImplCopyWith<_$GroupsLoadedImpl> get copyWith =>
      __$$GroupsLoadedImplCopyWithImpl<_$GroupsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Group> groups) initial,
    required TResult Function(List<Group> groups) loaded,
  }) {
    return loaded(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Group> groups)? initial,
    TResult? Function(List<Group> groups)? loaded,
  }) {
    return loaded?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Group> groups)? initial,
    TResult Function(List<Group> groups)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupsInitial value) initial,
    required TResult Function(GroupsLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsInitial value)? initial,
    TResult? Function(GroupsLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsInitial value)? initial,
    TResult Function(GroupsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GroupsLoaded implements GroupsState {
  factory GroupsLoaded(final List<Group> groups) = _$GroupsLoadedImpl;

  @override
  List<Group> get groups;
  @override
  @JsonKey(ignore: true)
  _$$GroupsLoadedImplCopyWith<_$GroupsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
