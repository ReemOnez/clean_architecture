// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'majd_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MajdState {
  bool get temp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MajdStateCopyWith<MajdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MajdStateCopyWith<$Res> {
  factory $MajdStateCopyWith(MajdState value, $Res Function(MajdState) then) =
      _$MajdStateCopyWithImpl<$Res, MajdState>;
  @useResult
  $Res call({bool temp});
}

/// @nodoc
class _$MajdStateCopyWithImpl<$Res, $Val extends MajdState>
    implements $MajdStateCopyWith<$Res> {
  _$MajdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MajdStateCopyWith<$Res> implements $MajdStateCopyWith<$Res> {
  factory _$$_MajdStateCopyWith(
          _$_MajdState value, $Res Function(_$_MajdState) then) =
      __$$_MajdStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool temp});
}

/// @nodoc
class __$$_MajdStateCopyWithImpl<$Res>
    extends _$MajdStateCopyWithImpl<$Res, _$_MajdState>
    implements _$$_MajdStateCopyWith<$Res> {
  __$$_MajdStateCopyWithImpl(
      _$_MajdState _value, $Res Function(_$_MajdState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
  }) {
    return _then(_$_MajdState(
      null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MajdState implements _MajdState {
  const _$_MajdState(this.temp);

  @override
  final bool temp;

  @override
  String toString() {
    return 'MajdState(temp: $temp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MajdState &&
            (identical(other.temp, temp) || other.temp == temp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, temp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MajdStateCopyWith<_$_MajdState> get copyWith =>
      __$$_MajdStateCopyWithImpl<_$_MajdState>(this, _$identity);
}

abstract class _MajdState implements MajdState {
  const factory _MajdState(final bool temp) = _$_MajdState;

  @override
  bool get temp;
  @override
  @JsonKey(ignore: true)
  _$$_MajdStateCopyWith<_$_MajdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MajdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tempEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tempEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tempEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TempEvent value) tempEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TempEvent value)? tempEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TempEvent value)? tempEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MajdEventCopyWith<$Res> {
  factory $MajdEventCopyWith(MajdEvent value, $Res Function(MajdEvent) then) =
      _$MajdEventCopyWithImpl<$Res, MajdEvent>;
}

/// @nodoc
class _$MajdEventCopyWithImpl<$Res, $Val extends MajdEvent>
    implements $MajdEventCopyWith<$Res> {
  _$MajdEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TempEventCopyWith<$Res> {
  factory _$$TempEventCopyWith(
          _$TempEvent value, $Res Function(_$TempEvent) then) =
      __$$TempEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TempEventCopyWithImpl<$Res>
    extends _$MajdEventCopyWithImpl<$Res, _$TempEvent>
    implements _$$TempEventCopyWith<$Res> {
  __$$TempEventCopyWithImpl(
      _$TempEvent _value, $Res Function(_$TempEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TempEvent implements TempEvent {
  const _$TempEvent();

  @override
  String toString() {
    return 'MajdEvent.tempEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TempEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tempEvent,
  }) {
    return tempEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tempEvent,
  }) {
    return tempEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tempEvent,
    required TResult orElse(),
  }) {
    if (tempEvent != null) {
      return tempEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TempEvent value) tempEvent,
  }) {
    return tempEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TempEvent value)? tempEvent,
  }) {
    return tempEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TempEvent value)? tempEvent,
    required TResult orElse(),
  }) {
    if (tempEvent != null) {
      return tempEvent(this);
    }
    return orElse();
  }
}

abstract class TempEvent implements MajdEvent {
  const factory TempEvent() = _$TempEvent;
}
