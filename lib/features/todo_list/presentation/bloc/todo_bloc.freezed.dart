// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodoList,
    required TResult Function(String name) updateName,
    required TResult Function(int number) updateNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodoList,
    TResult? Function(String name)? updateName,
    TResult? Function(int number)? updateNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodoList,
    TResult Function(String name)? updateName,
    TResult Function(int number)? updateNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodoList value) getTodoList,
    required TResult Function(UpdateName value) updateName,
    required TResult Function(UpdateNumber value) updateNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodoList value)? getTodoList,
    TResult? Function(UpdateName value)? updateName,
    TResult? Function(UpdateNumber value)? updateNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodoList value)? getTodoList,
    TResult Function(UpdateName value)? updateName,
    TResult Function(UpdateNumber value)? updateNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTodoListImplCopyWith<$Res> {
  factory _$$GetTodoListImplCopyWith(
          _$GetTodoListImpl value, $Res Function(_$GetTodoListImpl) then) =
      __$$GetTodoListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTodoListImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$GetTodoListImpl>
    implements _$$GetTodoListImplCopyWith<$Res> {
  __$$GetTodoListImplCopyWithImpl(
      _$GetTodoListImpl _value, $Res Function(_$GetTodoListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTodoListImpl implements GetTodoList {
  const _$GetTodoListImpl();

  @override
  String toString() {
    return 'TodoEvent.getTodoList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTodoListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodoList,
    required TResult Function(String name) updateName,
    required TResult Function(int number) updateNumber,
  }) {
    return getTodoList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodoList,
    TResult? Function(String name)? updateName,
    TResult? Function(int number)? updateNumber,
  }) {
    return getTodoList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodoList,
    TResult Function(String name)? updateName,
    TResult Function(int number)? updateNumber,
    required TResult orElse(),
  }) {
    if (getTodoList != null) {
      return getTodoList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodoList value) getTodoList,
    required TResult Function(UpdateName value) updateName,
    required TResult Function(UpdateNumber value) updateNumber,
  }) {
    return getTodoList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodoList value)? getTodoList,
    TResult? Function(UpdateName value)? updateName,
    TResult? Function(UpdateNumber value)? updateNumber,
  }) {
    return getTodoList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodoList value)? getTodoList,
    TResult Function(UpdateName value)? updateName,
    TResult Function(UpdateNumber value)? updateNumber,
    required TResult orElse(),
  }) {
    if (getTodoList != null) {
      return getTodoList(this);
    }
    return orElse();
  }
}

abstract class GetTodoList implements TodoEvent {
  const factory GetTodoList() = _$GetTodoListImpl;
}

/// @nodoc
abstract class _$$UpdateNameImplCopyWith<$Res> {
  factory _$$UpdateNameImplCopyWith(
          _$UpdateNameImpl value, $Res Function(_$UpdateNameImpl) then) =
      __$$UpdateNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$UpdateNameImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$UpdateNameImpl>
    implements _$$UpdateNameImplCopyWith<$Res> {
  __$$UpdateNameImplCopyWithImpl(
      _$UpdateNameImpl _value, $Res Function(_$UpdateNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$UpdateNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateNameImpl implements UpdateName {
  const _$UpdateNameImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'TodoEvent.updateName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNameImplCopyWith<_$UpdateNameImpl> get copyWith =>
      __$$UpdateNameImplCopyWithImpl<_$UpdateNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodoList,
    required TResult Function(String name) updateName,
    required TResult Function(int number) updateNumber,
  }) {
    return updateName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodoList,
    TResult? Function(String name)? updateName,
    TResult? Function(int number)? updateNumber,
  }) {
    return updateName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodoList,
    TResult Function(String name)? updateName,
    TResult Function(int number)? updateNumber,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodoList value) getTodoList,
    required TResult Function(UpdateName value) updateName,
    required TResult Function(UpdateNumber value) updateNumber,
  }) {
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodoList value)? getTodoList,
    TResult? Function(UpdateName value)? updateName,
    TResult? Function(UpdateNumber value)? updateNumber,
  }) {
    return updateName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodoList value)? getTodoList,
    TResult Function(UpdateName value)? updateName,
    TResult Function(UpdateNumber value)? updateNumber,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class UpdateName implements TodoEvent {
  const factory UpdateName({required final String name}) = _$UpdateNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$UpdateNameImplCopyWith<_$UpdateNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNumberImplCopyWith<$Res> {
  factory _$$UpdateNumberImplCopyWith(
          _$UpdateNumberImpl value, $Res Function(_$UpdateNumberImpl) then) =
      __$$UpdateNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$UpdateNumberImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$UpdateNumberImpl>
    implements _$$UpdateNumberImplCopyWith<$Res> {
  __$$UpdateNumberImplCopyWithImpl(
      _$UpdateNumberImpl _value, $Res Function(_$UpdateNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$UpdateNumberImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateNumberImpl implements UpdateNumber {
  const _$UpdateNumberImpl({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'TodoEvent.updateNumber(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNumberImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNumberImplCopyWith<_$UpdateNumberImpl> get copyWith =>
      __$$UpdateNumberImplCopyWithImpl<_$UpdateNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodoList,
    required TResult Function(String name) updateName,
    required TResult Function(int number) updateNumber,
  }) {
    return updateNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodoList,
    TResult? Function(String name)? updateName,
    TResult? Function(int number)? updateNumber,
  }) {
    return updateNumber?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodoList,
    TResult Function(String name)? updateName,
    TResult Function(int number)? updateNumber,
    required TResult orElse(),
  }) {
    if (updateNumber != null) {
      return updateNumber(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodoList value) getTodoList,
    required TResult Function(UpdateName value) updateName,
    required TResult Function(UpdateNumber value) updateNumber,
  }) {
    return updateNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodoList value)? getTodoList,
    TResult? Function(UpdateName value)? updateName,
    TResult? Function(UpdateNumber value)? updateNumber,
  }) {
    return updateNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodoList value)? getTodoList,
    TResult Function(UpdateName value)? updateName,
    TResult Function(UpdateNumber value)? updateNumber,
    required TResult orElse(),
  }) {
    if (updateNumber != null) {
      return updateNumber(this);
    }
    return orElse();
  }
}

abstract class UpdateNumber implements TodoEvent {
  const factory UpdateNumber({required final int number}) = _$UpdateNumberImpl;

  int get number;
  @JsonKey(ignore: true)
  _$$UpdateNumberImplCopyWith<_$UpdateNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<ToDo>? todos) loaded,
    required TResult Function(String name) nameUpdated,
    required TResult Function(int number) numberUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loading,
    TResult? Function(List<ToDo>? todos)? loaded,
    TResult? Function(String name)? nameUpdated,
    TResult? Function(int number)? numberUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<ToDo>? todos)? loaded,
    TResult Function(String name)? nameUpdated,
    TResult Function(int number)? numberUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(NameUpdated value) nameUpdated,
    required TResult Function(NumberUpdated value) numberUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(NameUpdated value)? nameUpdated,
    TResult? Function(NumberUpdated value)? numberUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(NameUpdated value)? nameUpdated,
    TResult Function(NumberUpdated value)? numberUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'TodoState.initialState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<ToDo>? todos) loaded,
    required TResult Function(String name) nameUpdated,
    required TResult Function(int number) numberUpdated,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loading,
    TResult? Function(List<ToDo>? todos)? loaded,
    TResult? Function(String name)? nameUpdated,
    TResult? Function(int number)? numberUpdated,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<ToDo>? todos)? loaded,
    TResult Function(String name)? nameUpdated,
    TResult Function(int number)? numberUpdated,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(NameUpdated value) nameUpdated,
    required TResult Function(NumberUpdated value) numberUpdated,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(NameUpdated value)? nameUpdated,
    TResult? Function(NumberUpdated value)? numberUpdated,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(NameUpdated value)? nameUpdated,
    TResult Function(NumberUpdated value)? numberUpdated,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements TodoState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'TodoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<ToDo>? todos) loaded,
    required TResult Function(String name) nameUpdated,
    required TResult Function(int number) numberUpdated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loading,
    TResult? Function(List<ToDo>? todos)? loaded,
    TResult? Function(String name)? nameUpdated,
    TResult? Function(int number)? numberUpdated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<ToDo>? todos)? loaded,
    TResult Function(String name)? nameUpdated,
    TResult Function(int number)? numberUpdated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(NameUpdated value) nameUpdated,
    required TResult Function(NumberUpdated value) numberUpdated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(NameUpdated value)? nameUpdated,
    TResult? Function(NumberUpdated value)? numberUpdated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(NameUpdated value)? nameUpdated,
    TResult Function(NumberUpdated value)? numberUpdated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements TodoState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ToDo>? todos});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_$LoadedStateImpl(
      todos: freezed == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<ToDo>?,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl implements LoadedState {
  const _$LoadedStateImpl({required final List<ToDo>? todos}) : _todos = todos;

  final List<ToDo>? _todos;
  @override
  List<ToDo>? get todos {
    final value = _todos;
    if (value == null) return null;
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodoState.loaded(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<ToDo>? todos) loaded,
    required TResult Function(String name) nameUpdated,
    required TResult Function(int number) numberUpdated,
  }) {
    return loaded(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loading,
    TResult? Function(List<ToDo>? todos)? loaded,
    TResult? Function(String name)? nameUpdated,
    TResult? Function(int number)? numberUpdated,
  }) {
    return loaded?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<ToDo>? todos)? loaded,
    TResult Function(String name)? nameUpdated,
    TResult Function(int number)? numberUpdated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(NameUpdated value) nameUpdated,
    required TResult Function(NumberUpdated value) numberUpdated,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(NameUpdated value)? nameUpdated,
    TResult? Function(NumberUpdated value)? numberUpdated,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(NameUpdated value)? nameUpdated,
    TResult Function(NumberUpdated value)? numberUpdated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements TodoState {
  const factory LoadedState({required final List<ToDo>? todos}) =
      _$LoadedStateImpl;

  List<ToDo>? get todos;
  @JsonKey(ignore: true)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameUpdatedImplCopyWith<$Res> {
  factory _$$NameUpdatedImplCopyWith(
          _$NameUpdatedImpl value, $Res Function(_$NameUpdatedImpl) then) =
      __$$NameUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameUpdatedImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$NameUpdatedImpl>
    implements _$$NameUpdatedImplCopyWith<$Res> {
  __$$NameUpdatedImplCopyWithImpl(
      _$NameUpdatedImpl _value, $Res Function(_$NameUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameUpdatedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameUpdatedImpl implements NameUpdated {
  const _$NameUpdatedImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'TodoState.nameUpdated(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameUpdatedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameUpdatedImplCopyWith<_$NameUpdatedImpl> get copyWith =>
      __$$NameUpdatedImplCopyWithImpl<_$NameUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<ToDo>? todos) loaded,
    required TResult Function(String name) nameUpdated,
    required TResult Function(int number) numberUpdated,
  }) {
    return nameUpdated(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loading,
    TResult? Function(List<ToDo>? todos)? loaded,
    TResult? Function(String name)? nameUpdated,
    TResult? Function(int number)? numberUpdated,
  }) {
    return nameUpdated?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<ToDo>? todos)? loaded,
    TResult Function(String name)? nameUpdated,
    TResult Function(int number)? numberUpdated,
    required TResult orElse(),
  }) {
    if (nameUpdated != null) {
      return nameUpdated(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(NameUpdated value) nameUpdated,
    required TResult Function(NumberUpdated value) numberUpdated,
  }) {
    return nameUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(NameUpdated value)? nameUpdated,
    TResult? Function(NumberUpdated value)? numberUpdated,
  }) {
    return nameUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(NameUpdated value)? nameUpdated,
    TResult Function(NumberUpdated value)? numberUpdated,
    required TResult orElse(),
  }) {
    if (nameUpdated != null) {
      return nameUpdated(this);
    }
    return orElse();
  }
}

abstract class NameUpdated implements TodoState {
  const factory NameUpdated({required final String name}) = _$NameUpdatedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameUpdatedImplCopyWith<_$NameUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumberUpdatedImplCopyWith<$Res> {
  factory _$$NumberUpdatedImplCopyWith(
          _$NumberUpdatedImpl value, $Res Function(_$NumberUpdatedImpl) then) =
      __$$NumberUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$NumberUpdatedImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$NumberUpdatedImpl>
    implements _$$NumberUpdatedImplCopyWith<$Res> {
  __$$NumberUpdatedImplCopyWithImpl(
      _$NumberUpdatedImpl _value, $Res Function(_$NumberUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$NumberUpdatedImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NumberUpdatedImpl implements NumberUpdated {
  const _$NumberUpdatedImpl({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'TodoState.numberUpdated(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberUpdatedImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberUpdatedImplCopyWith<_$NumberUpdatedImpl> get copyWith =>
      __$$NumberUpdatedImplCopyWithImpl<_$NumberUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loading,
    required TResult Function(List<ToDo>? todos) loaded,
    required TResult Function(String name) nameUpdated,
    required TResult Function(int number) numberUpdated,
  }) {
    return numberUpdated(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loading,
    TResult? Function(List<ToDo>? todos)? loaded,
    TResult? Function(String name)? nameUpdated,
    TResult? Function(int number)? numberUpdated,
  }) {
    return numberUpdated?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loading,
    TResult Function(List<ToDo>? todos)? loaded,
    TResult Function(String name)? nameUpdated,
    TResult Function(int number)? numberUpdated,
    required TResult orElse(),
  }) {
    if (numberUpdated != null) {
      return numberUpdated(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(NameUpdated value) nameUpdated,
    required TResult Function(NumberUpdated value) numberUpdated,
  }) {
    return numberUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(NameUpdated value)? nameUpdated,
    TResult? Function(NumberUpdated value)? numberUpdated,
  }) {
    return numberUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(NameUpdated value)? nameUpdated,
    TResult Function(NumberUpdated value)? numberUpdated,
    required TResult orElse(),
  }) {
    if (numberUpdated != null) {
      return numberUpdated(this);
    }
    return orElse();
  }
}

abstract class NumberUpdated implements TodoState {
  const factory NumberUpdated({required final int number}) =
      _$NumberUpdatedImpl;

  int get number;
  @JsonKey(ignore: true)
  _$$NumberUpdatedImplCopyWith<_$NumberUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
