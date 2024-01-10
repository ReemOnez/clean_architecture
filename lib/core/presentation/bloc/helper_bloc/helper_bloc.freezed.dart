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
  void Function(BuildContext)? get contextCallback =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {bool isLoading,
      FailureResult<dynamic>? failure,
      void Function(BuildContext)? contextCallback});
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
    Object? contextCallback = freezed,
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
      contextCallback: freezed == contextCallback
          ? _value.contextCallback
          : contextCallback // ignore: cast_nullable_to_non_nullable
              as void Function(BuildContext)?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelperBlocStateImplCopyWith<$Res>
    implements $HelperBlocStateCopyWith<$Res> {
  factory _$$HelperBlocStateImplCopyWith(_$HelperBlocStateImpl value,
          $Res Function(_$HelperBlocStateImpl) then) =
      __$$HelperBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      FailureResult<dynamic>? failure,
      void Function(BuildContext)? contextCallback});
}

/// @nodoc
class __$$HelperBlocStateImplCopyWithImpl<$Res>
    extends _$HelperBlocStateCopyWithImpl<$Res, _$HelperBlocStateImpl>
    implements _$$HelperBlocStateImplCopyWith<$Res> {
  __$$HelperBlocStateImplCopyWithImpl(
      _$HelperBlocStateImpl _value, $Res Function(_$HelperBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
    Object? contextCallback = freezed,
  }) {
    return _then(_$HelperBlocStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FailureResult<dynamic>?,
      contextCallback: freezed == contextCallback
          ? _value.contextCallback
          : contextCallback // ignore: cast_nullable_to_non_nullable
              as void Function(BuildContext)?,
    ));
  }
}

/// @nodoc

class _$HelperBlocStateImpl implements _HelperBlocState {
  const _$HelperBlocStateImpl(
      {required this.isLoading, this.failure, this.contextCallback});

  @override
  final bool isLoading;
//  required ContextCallback contextCallback,
  @override
  final FailureResult<dynamic>? failure;
  @override
  final void Function(BuildContext)? contextCallback;

  @override
  String toString() {
    return 'HelperBlocState(isLoading: $isLoading, failure: $failure, contextCallback: $contextCallback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelperBlocStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.contextCallback, contextCallback) ||
                other.contextCallback == contextCallback));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, failure, contextCallback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelperBlocStateImplCopyWith<_$HelperBlocStateImpl> get copyWith =>
      __$$HelperBlocStateImplCopyWithImpl<_$HelperBlocStateImpl>(
          this, _$identity);
}

abstract class _HelperBlocState implements HelperBlocState {
  const factory _HelperBlocState(
          {required final bool isLoading,
          final FailureResult<dynamic>? failure,
          final void Function(BuildContext)? contextCallback}) =
      _$HelperBlocStateImpl;

  @override
  bool get isLoading;
  @override //  required ContextCallback contextCallback,
  FailureResult<dynamic>? get failure;
  @override
  void Function(BuildContext)? get contextCallback;
  @override
  @JsonKey(ignore: true)
  _$$HelperBlocStateImplCopyWith<_$HelperBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HelperBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(FailureResult<dynamic> failure) failureHappened,
    required TResult Function(void Function(BuildContext) callback)
        contextCallbackTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(FailureResult<dynamic> failure)? failureHappened,
    TResult? Function(void Function(BuildContext) callback)?
        contextCallbackTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(FailureResult<dynamic> failure)? failureHappened,
    TResult Function(void Function(BuildContext) callback)?
        contextCallbackTriggered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChanged value) loadingChanged,
    required TResult Function(FailureCleared value) failureCleared,
    required TResult Function(FailureHappened value) failureHappened,
    required TResult Function(ContextCallbackTriggered value)
        contextCallbackTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
    TResult? Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
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
abstract class _$$LoadingChangedImplCopyWith<$Res> {
  factory _$$LoadingChangedImplCopyWith(_$LoadingChangedImpl value,
          $Res Function(_$LoadingChangedImpl) then) =
      __$$LoadingChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingChangedImplCopyWithImpl<$Res>
    extends _$HelperBlocEventCopyWithImpl<$Res, _$LoadingChangedImpl>
    implements _$$LoadingChangedImplCopyWith<$Res> {
  __$$LoadingChangedImplCopyWithImpl(
      _$LoadingChangedImpl _value, $Res Function(_$LoadingChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$LoadingChangedImpl(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingChangedImpl implements LoadingChanged {
  const _$LoadingChangedImpl(this.isLoading);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'HelperBlocEvent.loadingChanged(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingChangedImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingChangedImplCopyWith<_$LoadingChangedImpl> get copyWith =>
      __$$LoadingChangedImplCopyWithImpl<_$LoadingChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(FailureResult<dynamic> failure) failureHappened,
    required TResult Function(void Function(BuildContext) callback)
        contextCallbackTriggered,
  }) {
    return loadingChanged(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(FailureResult<dynamic> failure)? failureHappened,
    TResult? Function(void Function(BuildContext) callback)?
        contextCallbackTriggered,
  }) {
    return loadingChanged?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(FailureResult<dynamic> failure)? failureHappened,
    TResult Function(void Function(BuildContext) callback)?
        contextCallbackTriggered,
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
    required TResult Function(ContextCallbackTriggered value)
        contextCallbackTriggered,
  }) {
    return loadingChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
    TResult? Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) {
    return loadingChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
    required TResult orElse(),
  }) {
    if (loadingChanged != null) {
      return loadingChanged(this);
    }
    return orElse();
  }
}

abstract class LoadingChanged implements HelperBlocEvent {
  const factory LoadingChanged(final bool isLoading) = _$LoadingChangedImpl;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$LoadingChangedImplCopyWith<_$LoadingChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureClearedImplCopyWith<$Res> {
  factory _$$FailureClearedImplCopyWith(_$FailureClearedImpl value,
          $Res Function(_$FailureClearedImpl) then) =
      __$$FailureClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureClearedImplCopyWithImpl<$Res>
    extends _$HelperBlocEventCopyWithImpl<$Res, _$FailureClearedImpl>
    implements _$$FailureClearedImplCopyWith<$Res> {
  __$$FailureClearedImplCopyWithImpl(
      _$FailureClearedImpl _value, $Res Function(_$FailureClearedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailureClearedImpl implements FailureCleared {
  const _$FailureClearedImpl();

  @override
  String toString() {
    return 'HelperBlocEvent.failureCleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailureClearedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(FailureResult<dynamic> failure) failureHappened,
    required TResult Function(void Function(BuildContext) callback)
        contextCallbackTriggered,
  }) {
    return failureCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(FailureResult<dynamic> failure)? failureHappened,
    TResult? Function(void Function(BuildContext) callback)?
        contextCallbackTriggered,
  }) {
    return failureCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(FailureResult<dynamic> failure)? failureHappened,
    TResult Function(void Function(BuildContext) callback)?
        contextCallbackTriggered,
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
    required TResult Function(ContextCallbackTriggered value)
        contextCallbackTriggered,
  }) {
    return failureCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
    TResult? Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) {
    return failureCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
    required TResult orElse(),
  }) {
    if (failureCleared != null) {
      return failureCleared(this);
    }
    return orElse();
  }
}

abstract class FailureCleared implements HelperBlocEvent {
  const factory FailureCleared() = _$FailureClearedImpl;
}

/// @nodoc
abstract class _$$FailureHappenedImplCopyWith<$Res> {
  factory _$$FailureHappenedImplCopyWith(_$FailureHappenedImpl value,
          $Res Function(_$FailureHappenedImpl) then) =
      __$$FailureHappenedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FailureResult<dynamic> failure});
}

/// @nodoc
class __$$FailureHappenedImplCopyWithImpl<$Res>
    extends _$HelperBlocEventCopyWithImpl<$Res, _$FailureHappenedImpl>
    implements _$$FailureHappenedImplCopyWith<$Res> {
  __$$FailureHappenedImplCopyWithImpl(
      _$FailureHappenedImpl _value, $Res Function(_$FailureHappenedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailureHappenedImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FailureResult<dynamic>,
    ));
  }
}

/// @nodoc

class _$FailureHappenedImpl implements FailureHappened {
  const _$FailureHappenedImpl(this.failure);

  @override
  final FailureResult<dynamic> failure;

  @override
  String toString() {
    return 'HelperBlocEvent.failureHappened(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureHappenedImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureHappenedImplCopyWith<_$FailureHappenedImpl> get copyWith =>
      __$$FailureHappenedImplCopyWithImpl<_$FailureHappenedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(FailureResult<dynamic> failure) failureHappened,
    required TResult Function(void Function(BuildContext) callback)
        contextCallbackTriggered,
  }) {
    return failureHappened(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(FailureResult<dynamic> failure)? failureHappened,
    TResult? Function(void Function(BuildContext) callback)?
        contextCallbackTriggered,
  }) {
    return failureHappened?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(FailureResult<dynamic> failure)? failureHappened,
    TResult Function(void Function(BuildContext) callback)?
        contextCallbackTriggered,
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
    required TResult Function(ContextCallbackTriggered value)
        contextCallbackTriggered,
  }) {
    return failureHappened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
    TResult? Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) {
    return failureHappened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
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
      _$FailureHappenedImpl;

  FailureResult<dynamic> get failure;
  @JsonKey(ignore: true)
  _$$FailureHappenedImplCopyWith<_$FailureHappenedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContextCallbackTriggeredImplCopyWith<$Res> {
  factory _$$ContextCallbackTriggeredImplCopyWith(
          _$ContextCallbackTriggeredImpl value,
          $Res Function(_$ContextCallbackTriggeredImpl) then) =
      __$$ContextCallbackTriggeredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({void Function(BuildContext) callback});
}

/// @nodoc
class __$$ContextCallbackTriggeredImplCopyWithImpl<$Res>
    extends _$HelperBlocEventCopyWithImpl<$Res, _$ContextCallbackTriggeredImpl>
    implements _$$ContextCallbackTriggeredImplCopyWith<$Res> {
  __$$ContextCallbackTriggeredImplCopyWithImpl(
      _$ContextCallbackTriggeredImpl _value,
      $Res Function(_$ContextCallbackTriggeredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$ContextCallbackTriggeredImpl(
      null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as void Function(BuildContext),
    ));
  }
}

/// @nodoc

class _$ContextCallbackTriggeredImpl implements ContextCallbackTriggered {
  const _$ContextCallbackTriggeredImpl(this.callback);

  @override
  final void Function(BuildContext) callback;

  @override
  String toString() {
    return 'HelperBlocEvent.contextCallbackTriggered(callback: $callback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContextCallbackTriggeredImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContextCallbackTriggeredImplCopyWith<_$ContextCallbackTriggeredImpl>
      get copyWith => __$$ContextCallbackTriggeredImplCopyWithImpl<
          _$ContextCallbackTriggeredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loadingChanged,
    required TResult Function() failureCleared,
    required TResult Function(FailureResult<dynamic> failure) failureHappened,
    required TResult Function(void Function(BuildContext) callback)
        contextCallbackTriggered,
  }) {
    return contextCallbackTriggered(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? loadingChanged,
    TResult? Function()? failureCleared,
    TResult? Function(FailureResult<dynamic> failure)? failureHappened,
    TResult? Function(void Function(BuildContext) callback)?
        contextCallbackTriggered,
  }) {
    return contextCallbackTriggered?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loadingChanged,
    TResult Function()? failureCleared,
    TResult Function(FailureResult<dynamic> failure)? failureHappened,
    TResult Function(void Function(BuildContext) callback)?
        contextCallbackTriggered,
    required TResult orElse(),
  }) {
    if (contextCallbackTriggered != null) {
      return contextCallbackTriggered(callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChanged value) loadingChanged,
    required TResult Function(FailureCleared value) failureCleared,
    required TResult Function(FailureHappened value) failureHappened,
    required TResult Function(ContextCallbackTriggered value)
        contextCallbackTriggered,
  }) {
    return contextCallbackTriggered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChanged value)? loadingChanged,
    TResult? Function(FailureCleared value)? failureCleared,
    TResult? Function(FailureHappened value)? failureHappened,
    TResult? Function(ContextCallbackTriggered value)? contextCallbackTriggered,
  }) {
    return contextCallbackTriggered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChanged value)? loadingChanged,
    TResult Function(FailureCleared value)? failureCleared,
    TResult Function(FailureHappened value)? failureHappened,
    TResult Function(ContextCallbackTriggered value)? contextCallbackTriggered,
    required TResult orElse(),
  }) {
    if (contextCallbackTriggered != null) {
      return contextCallbackTriggered(this);
    }
    return orElse();
  }
}

abstract class ContextCallbackTriggered implements HelperBlocEvent {
  const factory ContextCallbackTriggered(
          final void Function(BuildContext) callback) =
      _$ContextCallbackTriggeredImpl;

  void Function(BuildContext) get callback;
  @JsonKey(ignore: true)
  _$$ContextCallbackTriggeredImplCopyWith<_$ContextCallbackTriggeredImpl>
      get copyWith => throw _privateConstructorUsedError;
}
