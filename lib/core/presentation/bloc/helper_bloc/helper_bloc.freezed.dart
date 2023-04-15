// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'helper_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HelperBlocState {
  bool get isLoading =>
      throw _privateConstructorUsedError; //  required ContextCallback contextCallback,
  FailureResult<dynamic>? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HelperBlocStateCopyWith<HelperBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelperBlocStateCopyWith<$Res> {
  factory $HelperBlocStateCopyWith(
          HelperBlocState value, $Res Function(HelperBlocState) then) =
      _$HelperBlocStateCopyWithImpl<$Res, HelperBlocState>;
  @useResult
  $Res call({bool isLoading, FailureResult<dynamic>? failure});
}

/// @nodoc
class _$HelperBlocStateCopyWithImpl<$Res, $Val extends HelperBlocState>
    implements $HelperBlocStateCopyWith<$Res> {
  _$HelperBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FailureResult<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HelperBlocStateCopyWith<$Res>
    implements $HelperBlocStateCopyWith<$Res> {
  factory _$$_HelperBlocStateCopyWith(
          _$_HelperBlocState value, $Res Function(_$_HelperBlocState) then) =
      __$$_HelperBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, FailureResult<dynamic>? failure});
}

/// @nodoc
class __$$_HelperBlocStateCopyWithImpl<$Res>
    extends _$HelperBlocStateCopyWithImpl<$Res, _$_HelperBlocState>
    implements _$$_HelperBlocStateCopyWith<$Res> {
  __$$_HelperBlocStateCopyWithImpl(
      _$_HelperBlocState _value, $Res Function(_$_HelperBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$_HelperBlocState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FailureResult<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_HelperBlocState implements _HelperBlocState {
  const _$_HelperBlocState({required this.isLoading, this.failure});

  @override
  final bool isLoading;
//  required ContextCallback contextCallback,
  @override
  final FailureResult<dynamic>? failure;

  @override
  String toString() {
    return 'HelperBlocState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelperBlocState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HelperBlocStateCopyWith<_$_HelperBlocState> get copyWith =>
      __$$_HelperBlocStateCopyWithImpl<_$_HelperBlocState>(this, _$identity);
}

abstract class _HelperBlocState implements HelperBlocState {
  const factory _HelperBlocState(
      {required final bool isLoading,
      final FailureResult<dynamic>? failure}) = _$_HelperBlocState;

  @override
  bool get isLoading;
  @override //  required ContextCallback contextCallback,
  FailureResult<dynamic>? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_HelperBlocStateCopyWith<_$_HelperBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HelperBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(FailureResult<dynamic> failure) failureHappened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(FailureResult<dynamic> failure)? failureHappened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(FailureResult<dynamic> failure)? failureHappened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChanged value) loadingChanged,
    required TResult Function(FailureCleared value) failureCleared,
    required TResult Function(FailureHappened value) failureHappened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelperBlocEventCopyWith<$Res> {
  factory $HelperBlocEventCopyWith(
          HelperBlocEvent value, $Res Function(HelperBlocEvent) then) =
      _$HelperBlocEventCopyWithImpl<$Res, HelperBlocEvent>;
}

/// @nodoc
class _$HelperBlocEventCopyWithImpl<$Res, $Val extends HelperBlocEvent>
    implements $HelperBlocEventCopyWith<$Res> {
  _$HelperBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingChangedCopyWith<$Res> {
  factory _$$LoadingChangedCopyWith(
          _$LoadingChanged value, $Res Function(_$LoadingChanged) then) =
      __$$LoadingChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingChangedCopyWithImpl<$Res>
    extends _$HelperBlocEventCopyWithImpl<$Res, _$LoadingChanged>
    implements _$$LoadingChangedCopyWith<$Res> {
  __$$LoadingChangedCopyWithImpl(
      _$LoadingChanged _value, $Res Function(_$LoadingChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$LoadingChanged(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingChanged implements LoadingChanged {
  const _$LoadingChanged(this.isLoading);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'HelperBlocEvent.loadingChanged(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingChanged &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingChangedCopyWith<_$LoadingChanged> get copyWith =>
      __$$LoadingChangedCopyWithImpl<_$LoadingChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(FailureResult<dynamic> failure) failureHappened,
  }) {
    return loadingChanged(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(FailureResult<dynamic> failure)? failureHappened,
  }) {
    return loadingChanged?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(FailureResult<dynamic> failure)? failureHappened,
    required TResult orElse(),
  }) {
    if (loadingChanged != null) {
      return loadingChanged(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChanged value) loadingChanged,
    required TResult Function(FailureCleared value) failureCleared,
    required TResult Function(FailureHappened value) failureHappened,
  }) {
    return loadingChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
  }) {
    return loadingChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    required TResult orElse(),
  }) {
    if (loadingChanged != null) {
      return loadingChanged(this);
    }
    return orElse();
  }
}

abstract class LoadingChanged implements HelperBlocEvent {
  const factory LoadingChanged(final bool isLoading) = _$LoadingChanged;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$LoadingChangedCopyWith<_$LoadingChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureClearedCopyWith<$Res> {
  factory _$$FailureClearedCopyWith(
          _$FailureCleared value, $Res Function(_$FailureCleared) then) =
      __$$FailureClearedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureClearedCopyWithImpl<$Res>
    extends _$HelperBlocEventCopyWithImpl<$Res, _$FailureCleared>
    implements _$$FailureClearedCopyWith<$Res> {
  __$$FailureClearedCopyWithImpl(
      _$FailureCleared _value, $Res Function(_$FailureCleared) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailureCleared implements FailureCleared {
  const _$FailureCleared();

  @override
  String toString() {
    return 'HelperBlocEvent.failureCleared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailureCleared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(FailureResult<dynamic> failure) failureHappened,
  }) {
    return failureCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(FailureResult<dynamic> failure)? failureHappened,
  }) {
    return failureCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(FailureResult<dynamic> failure)? failureHappened,
    required TResult orElse(),
  }) {
    if (failureCleared != null) {
      return failureCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChanged value) loadingChanged,
    required TResult Function(FailureCleared value) failureCleared,
    required TResult Function(FailureHappened value) failureHappened,
  }) {
    return failureCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
  }) {
    return failureCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    required TResult orElse(),
  }) {
    if (failureCleared != null) {
      return failureCleared(this);
    }
    return orElse();
  }
}

abstract class FailureCleared implements HelperBlocEvent {
  const factory FailureCleared() = _$FailureCleared;
}

/// @nodoc
abstract class _$$FailureHappenedCopyWith<$Res> {
  factory _$$FailureHappenedCopyWith(
          _$FailureHappened value, $Res Function(_$FailureHappened) then) =
      __$$FailureHappenedCopyWithImpl<$Res>;
  @useResult
  $Res call({FailureResult<dynamic> failure});
}

/// @nodoc
class __$$FailureHappenedCopyWithImpl<$Res>
    extends _$HelperBlocEventCopyWithImpl<$Res, _$FailureHappened>
    implements _$$FailureHappenedCopyWith<$Res> {
  __$$FailureHappenedCopyWithImpl(
      _$FailureHappened _value, $Res Function(_$FailureHappened) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailureHappened(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FailureResult<dynamic>,
    ));
  }
}

/// @nodoc

class _$FailureHappened implements FailureHappened {
  const _$FailureHappened(this.failure);

  @override
  final FailureResult<dynamic> failure;

  @override
  String toString() {
    return 'HelperBlocEvent.failureHappened(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureHappened &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureHappenedCopyWith<_$FailureHappened> get copyWith =>
      __$$FailureHappenedCopyWithImpl<_$FailureHappened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(FailureResult<dynamic> failure) failureHappened,
  }) {
    return failureHappened(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(FailureResult<dynamic> failure)? failureHappened,
  }) {
    return failureHappened?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(FailureResult<dynamic> failure)? failureHappened,
    required TResult orElse(),
  }) {
    if (failureHappened != null) {
      return failureHappened(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChanged value) loadingChanged,
    required TResult Function(FailureCleared value) failureCleared,
    required TResult Function(FailureHappened value) failureHappened,
  }) {
    return failureHappened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
  }) {
    return failureHappened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    required TResult orElse(),
  }) {
    if (failureHappened != null) {
      return failureHappened(this);
    }
    return orElse();
  }
}

abstract class FailureHappened implements HelperBlocEvent {
  const factory FailureHappened(final FailureResult<dynamic> failure) =
      _$FailureHappened;

  FailureResult<dynamic> get failure;
  @JsonKey(ignore: true)
  _$$FailureHappenedCopyWith<_$FailureHappened> get copyWith =>
      throw _privateConstructorUsedError;
}
