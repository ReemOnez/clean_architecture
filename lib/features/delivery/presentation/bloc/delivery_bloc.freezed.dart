// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeliveryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int vehicleId) calculateDeliveryFare,
    required TResult Function(String pickupAddress) addPickupAddress,
    required TResult Function(String deliveryAddress) addDeliveryAddress,
    required TResult Function(String weight) addWeight,
    required TResult Function(String note) addNote,
    required TResult Function(int id) chooseVehicleId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int vehicleId)? calculateDeliveryFare,
    TResult? Function(String pickupAddress)? addPickupAddress,
    TResult? Function(String deliveryAddress)? addDeliveryAddress,
    TResult? Function(String weight)? addWeight,
    TResult? Function(String note)? addNote,
    TResult? Function(int id)? chooseVehicleId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int vehicleId)? calculateDeliveryFare,
    TResult Function(String pickupAddress)? addPickupAddress,
    TResult Function(String deliveryAddress)? addDeliveryAddress,
    TResult Function(String weight)? addWeight,
    TResult Function(String note)? addNote,
    TResult Function(int id)? chooseVehicleId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculateDeliveryFare value)
        calculateDeliveryFare,
    required TResult Function(AddPickupAddress value) addPickupAddress,
    required TResult Function(AddDeliveryAddress value) addDeliveryAddress,
    required TResult Function(AddWeight value) addWeight,
    required TResult Function(AddNote value) addNote,
    required TResult Function(ChooseVehicleId value) chooseVehicleId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculateDeliveryFare value)? calculateDeliveryFare,
    TResult? Function(AddPickupAddress value)? addPickupAddress,
    TResult? Function(AddDeliveryAddress value)? addDeliveryAddress,
    TResult? Function(AddWeight value)? addWeight,
    TResult? Function(AddNote value)? addNote,
    TResult? Function(ChooseVehicleId value)? chooseVehicleId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculateDeliveryFare value)? calculateDeliveryFare,
    TResult Function(AddPickupAddress value)? addPickupAddress,
    TResult Function(AddDeliveryAddress value)? addDeliveryAddress,
    TResult Function(AddWeight value)? addWeight,
    TResult Function(AddNote value)? addNote,
    TResult Function(ChooseVehicleId value)? chooseVehicleId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryEventCopyWith<$Res> {
  factory $DeliveryEventCopyWith(
          DeliveryEvent value, $Res Function(DeliveryEvent) then) =
      _$DeliveryEventCopyWithImpl<$Res, DeliveryEvent>;
}

/// @nodoc
class _$DeliveryEventCopyWithImpl<$Res, $Val extends DeliveryEvent>
    implements $DeliveryEventCopyWith<$Res> {
  _$DeliveryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CalculateDeliveryFareImplCopyWith<$Res> {
  factory _$$CalculateDeliveryFareImplCopyWith(
          _$CalculateDeliveryFareImpl value,
          $Res Function(_$CalculateDeliveryFareImpl) then) =
      __$$CalculateDeliveryFareImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int vehicleId});
}

/// @nodoc
class __$$CalculateDeliveryFareImplCopyWithImpl<$Res>
    extends _$DeliveryEventCopyWithImpl<$Res, _$CalculateDeliveryFareImpl>
    implements _$$CalculateDeliveryFareImplCopyWith<$Res> {
  __$$CalculateDeliveryFareImplCopyWithImpl(_$CalculateDeliveryFareImpl _value,
      $Res Function(_$CalculateDeliveryFareImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleId = null,
  }) {
    return _then(_$CalculateDeliveryFareImpl(
      null == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CalculateDeliveryFareImpl implements CalculateDeliveryFare {
  const _$CalculateDeliveryFareImpl(this.vehicleId);

  @override
  final int vehicleId;

  @override
  String toString() {
    return 'DeliveryEvent.calculateDeliveryFare(vehicleId: $vehicleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculateDeliveryFareImpl &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculateDeliveryFareImplCopyWith<_$CalculateDeliveryFareImpl>
      get copyWith => __$$CalculateDeliveryFareImplCopyWithImpl<
          _$CalculateDeliveryFareImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int vehicleId) calculateDeliveryFare,
    required TResult Function(String pickupAddress) addPickupAddress,
    required TResult Function(String deliveryAddress) addDeliveryAddress,
    required TResult Function(String weight) addWeight,
    required TResult Function(String note) addNote,
    required TResult Function(int id) chooseVehicleId,
  }) {
    return calculateDeliveryFare(vehicleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int vehicleId)? calculateDeliveryFare,
    TResult? Function(String pickupAddress)? addPickupAddress,
    TResult? Function(String deliveryAddress)? addDeliveryAddress,
    TResult? Function(String weight)? addWeight,
    TResult? Function(String note)? addNote,
    TResult? Function(int id)? chooseVehicleId,
  }) {
    return calculateDeliveryFare?.call(vehicleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int vehicleId)? calculateDeliveryFare,
    TResult Function(String pickupAddress)? addPickupAddress,
    TResult Function(String deliveryAddress)? addDeliveryAddress,
    TResult Function(String weight)? addWeight,
    TResult Function(String note)? addNote,
    TResult Function(int id)? chooseVehicleId,
    required TResult orElse(),
  }) {
    if (calculateDeliveryFare != null) {
      return calculateDeliveryFare(vehicleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculateDeliveryFare value)
        calculateDeliveryFare,
    required TResult Function(AddPickupAddress value) addPickupAddress,
    required TResult Function(AddDeliveryAddress value) addDeliveryAddress,
    required TResult Function(AddWeight value) addWeight,
    required TResult Function(AddNote value) addNote,
    required TResult Function(ChooseVehicleId value) chooseVehicleId,
  }) {
    return calculateDeliveryFare(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculateDeliveryFare value)? calculateDeliveryFare,
    TResult? Function(AddPickupAddress value)? addPickupAddress,
    TResult? Function(AddDeliveryAddress value)? addDeliveryAddress,
    TResult? Function(AddWeight value)? addWeight,
    TResult? Function(AddNote value)? addNote,
    TResult? Function(ChooseVehicleId value)? chooseVehicleId,
  }) {
    return calculateDeliveryFare?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculateDeliveryFare value)? calculateDeliveryFare,
    TResult Function(AddPickupAddress value)? addPickupAddress,
    TResult Function(AddDeliveryAddress value)? addDeliveryAddress,
    TResult Function(AddWeight value)? addWeight,
    TResult Function(AddNote value)? addNote,
    TResult Function(ChooseVehicleId value)? chooseVehicleId,
    required TResult orElse(),
  }) {
    if (calculateDeliveryFare != null) {
      return calculateDeliveryFare(this);
    }
    return orElse();
  }
}

abstract class CalculateDeliveryFare implements DeliveryEvent {
  const factory CalculateDeliveryFare(final int vehicleId) =
      _$CalculateDeliveryFareImpl;

  int get vehicleId;
  @JsonKey(ignore: true)
  _$$CalculateDeliveryFareImplCopyWith<_$CalculateDeliveryFareImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPickupAddressImplCopyWith<$Res> {
  factory _$$AddPickupAddressImplCopyWith(_$AddPickupAddressImpl value,
          $Res Function(_$AddPickupAddressImpl) then) =
      __$$AddPickupAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pickupAddress});
}

/// @nodoc
class __$$AddPickupAddressImplCopyWithImpl<$Res>
    extends _$DeliveryEventCopyWithImpl<$Res, _$AddPickupAddressImpl>
    implements _$$AddPickupAddressImplCopyWith<$Res> {
  __$$AddPickupAddressImplCopyWithImpl(_$AddPickupAddressImpl _value,
      $Res Function(_$AddPickupAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupAddress = null,
  }) {
    return _then(_$AddPickupAddressImpl(
      null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddPickupAddressImpl implements AddPickupAddress {
  const _$AddPickupAddressImpl(this.pickupAddress);

  @override
  final String pickupAddress;

  @override
  String toString() {
    return 'DeliveryEvent.addPickupAddress(pickupAddress: $pickupAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPickupAddressImpl &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickupAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPickupAddressImplCopyWith<_$AddPickupAddressImpl> get copyWith =>
      __$$AddPickupAddressImplCopyWithImpl<_$AddPickupAddressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int vehicleId) calculateDeliveryFare,
    required TResult Function(String pickupAddress) addPickupAddress,
    required TResult Function(String deliveryAddress) addDeliveryAddress,
    required TResult Function(String weight) addWeight,
    required TResult Function(String note) addNote,
    required TResult Function(int id) chooseVehicleId,
  }) {
    return addPickupAddress(pickupAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int vehicleId)? calculateDeliveryFare,
    TResult? Function(String pickupAddress)? addPickupAddress,
    TResult? Function(String deliveryAddress)? addDeliveryAddress,
    TResult? Function(String weight)? addWeight,
    TResult? Function(String note)? addNote,
    TResult? Function(int id)? chooseVehicleId,
  }) {
    return addPickupAddress?.call(pickupAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int vehicleId)? calculateDeliveryFare,
    TResult Function(String pickupAddress)? addPickupAddress,
    TResult Function(String deliveryAddress)? addDeliveryAddress,
    TResult Function(String weight)? addWeight,
    TResult Function(String note)? addNote,
    TResult Function(int id)? chooseVehicleId,
    required TResult orElse(),
  }) {
    if (addPickupAddress != null) {
      return addPickupAddress(pickupAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculateDeliveryFare value)
        calculateDeliveryFare,
    required TResult Function(AddPickupAddress value) addPickupAddress,
    required TResult Function(AddDeliveryAddress value) addDeliveryAddress,
    required TResult Function(AddWeight value) addWeight,
    required TResult Function(AddNote value) addNote,
    required TResult Function(ChooseVehicleId value) chooseVehicleId,
  }) {
    return addPickupAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculateDeliveryFare value)? calculateDeliveryFare,
    TResult? Function(AddPickupAddress value)? addPickupAddress,
    TResult? Function(AddDeliveryAddress value)? addDeliveryAddress,
    TResult? Function(AddWeight value)? addWeight,
    TResult? Function(AddNote value)? addNote,
    TResult? Function(ChooseVehicleId value)? chooseVehicleId,
  }) {
    return addPickupAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculateDeliveryFare value)? calculateDeliveryFare,
    TResult Function(AddPickupAddress value)? addPickupAddress,
    TResult Function(AddDeliveryAddress value)? addDeliveryAddress,
    TResult Function(AddWeight value)? addWeight,
    TResult Function(AddNote value)? addNote,
    TResult Function(ChooseVehicleId value)? chooseVehicleId,
    required TResult orElse(),
  }) {
    if (addPickupAddress != null) {
      return addPickupAddress(this);
    }
    return orElse();
  }
}

abstract class AddPickupAddress implements DeliveryEvent {
  const factory AddPickupAddress(final String pickupAddress) =
      _$AddPickupAddressImpl;

  String get pickupAddress;
  @JsonKey(ignore: true)
  _$$AddPickupAddressImplCopyWith<_$AddPickupAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDeliveryAddressImplCopyWith<$Res> {
  factory _$$AddDeliveryAddressImplCopyWith(_$AddDeliveryAddressImpl value,
          $Res Function(_$AddDeliveryAddressImpl) then) =
      __$$AddDeliveryAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String deliveryAddress});
}

/// @nodoc
class __$$AddDeliveryAddressImplCopyWithImpl<$Res>
    extends _$DeliveryEventCopyWithImpl<$Res, _$AddDeliveryAddressImpl>
    implements _$$AddDeliveryAddressImplCopyWith<$Res> {
  __$$AddDeliveryAddressImplCopyWithImpl(_$AddDeliveryAddressImpl _value,
      $Res Function(_$AddDeliveryAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryAddress = null,
  }) {
    return _then(_$AddDeliveryAddressImpl(
      null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddDeliveryAddressImpl implements AddDeliveryAddress {
  const _$AddDeliveryAddressImpl(this.deliveryAddress);

  @override
  final String deliveryAddress;

  @override
  String toString() {
    return 'DeliveryEvent.addDeliveryAddress(deliveryAddress: $deliveryAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDeliveryAddressImpl &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deliveryAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDeliveryAddressImplCopyWith<_$AddDeliveryAddressImpl> get copyWith =>
      __$$AddDeliveryAddressImplCopyWithImpl<_$AddDeliveryAddressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int vehicleId) calculateDeliveryFare,
    required TResult Function(String pickupAddress) addPickupAddress,
    required TResult Function(String deliveryAddress) addDeliveryAddress,
    required TResult Function(String weight) addWeight,
    required TResult Function(String note) addNote,
    required TResult Function(int id) chooseVehicleId,
  }) {
    return addDeliveryAddress(deliveryAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int vehicleId)? calculateDeliveryFare,
    TResult? Function(String pickupAddress)? addPickupAddress,
    TResult? Function(String deliveryAddress)? addDeliveryAddress,
    TResult? Function(String weight)? addWeight,
    TResult? Function(String note)? addNote,
    TResult? Function(int id)? chooseVehicleId,
  }) {
    return addDeliveryAddress?.call(deliveryAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int vehicleId)? calculateDeliveryFare,
    TResult Function(String pickupAddress)? addPickupAddress,
    TResult Function(String deliveryAddress)? addDeliveryAddress,
    TResult Function(String weight)? addWeight,
    TResult Function(String note)? addNote,
    TResult Function(int id)? chooseVehicleId,
    required TResult orElse(),
  }) {
    if (addDeliveryAddress != null) {
      return addDeliveryAddress(deliveryAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculateDeliveryFare value)
        calculateDeliveryFare,
    required TResult Function(AddPickupAddress value) addPickupAddress,
    required TResult Function(AddDeliveryAddress value) addDeliveryAddress,
    required TResult Function(AddWeight value) addWeight,
    required TResult Function(AddNote value) addNote,
    required TResult Function(ChooseVehicleId value) chooseVehicleId,
  }) {
    return addDeliveryAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculateDeliveryFare value)? calculateDeliveryFare,
    TResult? Function(AddPickupAddress value)? addPickupAddress,
    TResult? Function(AddDeliveryAddress value)? addDeliveryAddress,
    TResult? Function(AddWeight value)? addWeight,
    TResult? Function(AddNote value)? addNote,
    TResult? Function(ChooseVehicleId value)? chooseVehicleId,
  }) {
    return addDeliveryAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculateDeliveryFare value)? calculateDeliveryFare,
    TResult Function(AddPickupAddress value)? addPickupAddress,
    TResult Function(AddDeliveryAddress value)? addDeliveryAddress,
    TResult Function(AddWeight value)? addWeight,
    TResult Function(AddNote value)? addNote,
    TResult Function(ChooseVehicleId value)? chooseVehicleId,
    required TResult orElse(),
  }) {
    if (addDeliveryAddress != null) {
      return addDeliveryAddress(this);
    }
    return orElse();
  }
}

abstract class AddDeliveryAddress implements DeliveryEvent {
  const factory AddDeliveryAddress(final String deliveryAddress) =
      _$AddDeliveryAddressImpl;

  String get deliveryAddress;
  @JsonKey(ignore: true)
  _$$AddDeliveryAddressImplCopyWith<_$AddDeliveryAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddWeightImplCopyWith<$Res> {
  factory _$$AddWeightImplCopyWith(
          _$AddWeightImpl value, $Res Function(_$AddWeightImpl) then) =
      __$$AddWeightImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String weight});
}

/// @nodoc
class __$$AddWeightImplCopyWithImpl<$Res>
    extends _$DeliveryEventCopyWithImpl<$Res, _$AddWeightImpl>
    implements _$$AddWeightImplCopyWith<$Res> {
  __$$AddWeightImplCopyWithImpl(
      _$AddWeightImpl _value, $Res Function(_$AddWeightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
  }) {
    return _then(_$AddWeightImpl(
      null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddWeightImpl implements AddWeight {
  const _$AddWeightImpl(this.weight);

  @override
  final String weight;

  @override
  String toString() {
    return 'DeliveryEvent.addWeight(weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddWeightImpl &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddWeightImplCopyWith<_$AddWeightImpl> get copyWith =>
      __$$AddWeightImplCopyWithImpl<_$AddWeightImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int vehicleId) calculateDeliveryFare,
    required TResult Function(String pickupAddress) addPickupAddress,
    required TResult Function(String deliveryAddress) addDeliveryAddress,
    required TResult Function(String weight) addWeight,
    required TResult Function(String note) addNote,
    required TResult Function(int id) chooseVehicleId,
  }) {
    return addWeight(weight);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int vehicleId)? calculateDeliveryFare,
    TResult? Function(String pickupAddress)? addPickupAddress,
    TResult? Function(String deliveryAddress)? addDeliveryAddress,
    TResult? Function(String weight)? addWeight,
    TResult? Function(String note)? addNote,
    TResult? Function(int id)? chooseVehicleId,
  }) {
    return addWeight?.call(weight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int vehicleId)? calculateDeliveryFare,
    TResult Function(String pickupAddress)? addPickupAddress,
    TResult Function(String deliveryAddress)? addDeliveryAddress,
    TResult Function(String weight)? addWeight,
    TResult Function(String note)? addNote,
    TResult Function(int id)? chooseVehicleId,
    required TResult orElse(),
  }) {
    if (addWeight != null) {
      return addWeight(weight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculateDeliveryFare value)
        calculateDeliveryFare,
    required TResult Function(AddPickupAddress value) addPickupAddress,
    required TResult Function(AddDeliveryAddress value) addDeliveryAddress,
    required TResult Function(AddWeight value) addWeight,
    required TResult Function(AddNote value) addNote,
    required TResult Function(ChooseVehicleId value) chooseVehicleId,
  }) {
    return addWeight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculateDeliveryFare value)? calculateDeliveryFare,
    TResult? Function(AddPickupAddress value)? addPickupAddress,
    TResult? Function(AddDeliveryAddress value)? addDeliveryAddress,
    TResult? Function(AddWeight value)? addWeight,
    TResult? Function(AddNote value)? addNote,
    TResult? Function(ChooseVehicleId value)? chooseVehicleId,
  }) {
    return addWeight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculateDeliveryFare value)? calculateDeliveryFare,
    TResult Function(AddPickupAddress value)? addPickupAddress,
    TResult Function(AddDeliveryAddress value)? addDeliveryAddress,
    TResult Function(AddWeight value)? addWeight,
    TResult Function(AddNote value)? addNote,
    TResult Function(ChooseVehicleId value)? chooseVehicleId,
    required TResult orElse(),
  }) {
    if (addWeight != null) {
      return addWeight(this);
    }
    return orElse();
  }
}

abstract class AddWeight implements DeliveryEvent {
  const factory AddWeight(final String weight) = _$AddWeightImpl;

  String get weight;
  @JsonKey(ignore: true)
  _$$AddWeightImplCopyWith<_$AddWeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNoteImplCopyWith<$Res> {
  factory _$$AddNoteImplCopyWith(
          _$AddNoteImpl value, $Res Function(_$AddNoteImpl) then) =
      __$$AddNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String note});
}

/// @nodoc
class __$$AddNoteImplCopyWithImpl<$Res>
    extends _$DeliveryEventCopyWithImpl<$Res, _$AddNoteImpl>
    implements _$$AddNoteImplCopyWith<$Res> {
  __$$AddNoteImplCopyWithImpl(
      _$AddNoteImpl _value, $Res Function(_$AddNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$AddNoteImpl(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddNoteImpl implements AddNote {
  const _$AddNoteImpl(this.note);

  @override
  final String note;

  @override
  String toString() {
    return 'DeliveryEvent.addNote(note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNoteImpl &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNoteImplCopyWith<_$AddNoteImpl> get copyWith =>
      __$$AddNoteImplCopyWithImpl<_$AddNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int vehicleId) calculateDeliveryFare,
    required TResult Function(String pickupAddress) addPickupAddress,
    required TResult Function(String deliveryAddress) addDeliveryAddress,
    required TResult Function(String weight) addWeight,
    required TResult Function(String note) addNote,
    required TResult Function(int id) chooseVehicleId,
  }) {
    return addNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int vehicleId)? calculateDeliveryFare,
    TResult? Function(String pickupAddress)? addPickupAddress,
    TResult? Function(String deliveryAddress)? addDeliveryAddress,
    TResult? Function(String weight)? addWeight,
    TResult? Function(String note)? addNote,
    TResult? Function(int id)? chooseVehicleId,
  }) {
    return addNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int vehicleId)? calculateDeliveryFare,
    TResult Function(String pickupAddress)? addPickupAddress,
    TResult Function(String deliveryAddress)? addDeliveryAddress,
    TResult Function(String weight)? addWeight,
    TResult Function(String note)? addNote,
    TResult Function(int id)? chooseVehicleId,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculateDeliveryFare value)
        calculateDeliveryFare,
    required TResult Function(AddPickupAddress value) addPickupAddress,
    required TResult Function(AddDeliveryAddress value) addDeliveryAddress,
    required TResult Function(AddWeight value) addWeight,
    required TResult Function(AddNote value) addNote,
    required TResult Function(ChooseVehicleId value) chooseVehicleId,
  }) {
    return addNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculateDeliveryFare value)? calculateDeliveryFare,
    TResult? Function(AddPickupAddress value)? addPickupAddress,
    TResult? Function(AddDeliveryAddress value)? addDeliveryAddress,
    TResult? Function(AddWeight value)? addWeight,
    TResult? Function(AddNote value)? addNote,
    TResult? Function(ChooseVehicleId value)? chooseVehicleId,
  }) {
    return addNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculateDeliveryFare value)? calculateDeliveryFare,
    TResult Function(AddPickupAddress value)? addPickupAddress,
    TResult Function(AddDeliveryAddress value)? addDeliveryAddress,
    TResult Function(AddWeight value)? addWeight,
    TResult Function(AddNote value)? addNote,
    TResult Function(ChooseVehicleId value)? chooseVehicleId,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(this);
    }
    return orElse();
  }
}

abstract class AddNote implements DeliveryEvent {
  const factory AddNote(final String note) = _$AddNoteImpl;

  String get note;
  @JsonKey(ignore: true)
  _$$AddNoteImplCopyWith<_$AddNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChooseVehicleIdImplCopyWith<$Res> {
  factory _$$ChooseVehicleIdImplCopyWith(_$ChooseVehicleIdImpl value,
          $Res Function(_$ChooseVehicleIdImpl) then) =
      __$$ChooseVehicleIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ChooseVehicleIdImplCopyWithImpl<$Res>
    extends _$DeliveryEventCopyWithImpl<$Res, _$ChooseVehicleIdImpl>
    implements _$$ChooseVehicleIdImplCopyWith<$Res> {
  __$$ChooseVehicleIdImplCopyWithImpl(
      _$ChooseVehicleIdImpl _value, $Res Function(_$ChooseVehicleIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ChooseVehicleIdImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChooseVehicleIdImpl implements ChooseVehicleId {
  const _$ChooseVehicleIdImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'DeliveryEvent.chooseVehicleId(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseVehicleIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseVehicleIdImplCopyWith<_$ChooseVehicleIdImpl> get copyWith =>
      __$$ChooseVehicleIdImplCopyWithImpl<_$ChooseVehicleIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int vehicleId) calculateDeliveryFare,
    required TResult Function(String pickupAddress) addPickupAddress,
    required TResult Function(String deliveryAddress) addDeliveryAddress,
    required TResult Function(String weight) addWeight,
    required TResult Function(String note) addNote,
    required TResult Function(int id) chooseVehicleId,
  }) {
    return chooseVehicleId(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int vehicleId)? calculateDeliveryFare,
    TResult? Function(String pickupAddress)? addPickupAddress,
    TResult? Function(String deliveryAddress)? addDeliveryAddress,
    TResult? Function(String weight)? addWeight,
    TResult? Function(String note)? addNote,
    TResult? Function(int id)? chooseVehicleId,
  }) {
    return chooseVehicleId?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int vehicleId)? calculateDeliveryFare,
    TResult Function(String pickupAddress)? addPickupAddress,
    TResult Function(String deliveryAddress)? addDeliveryAddress,
    TResult Function(String weight)? addWeight,
    TResult Function(String note)? addNote,
    TResult Function(int id)? chooseVehicleId,
    required TResult orElse(),
  }) {
    if (chooseVehicleId != null) {
      return chooseVehicleId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculateDeliveryFare value)
        calculateDeliveryFare,
    required TResult Function(AddPickupAddress value) addPickupAddress,
    required TResult Function(AddDeliveryAddress value) addDeliveryAddress,
    required TResult Function(AddWeight value) addWeight,
    required TResult Function(AddNote value) addNote,
    required TResult Function(ChooseVehicleId value) chooseVehicleId,
  }) {
    return chooseVehicleId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculateDeliveryFare value)? calculateDeliveryFare,
    TResult? Function(AddPickupAddress value)? addPickupAddress,
    TResult? Function(AddDeliveryAddress value)? addDeliveryAddress,
    TResult? Function(AddWeight value)? addWeight,
    TResult? Function(AddNote value)? addNote,
    TResult? Function(ChooseVehicleId value)? chooseVehicleId,
  }) {
    return chooseVehicleId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculateDeliveryFare value)? calculateDeliveryFare,
    TResult Function(AddPickupAddress value)? addPickupAddress,
    TResult Function(AddDeliveryAddress value)? addDeliveryAddress,
    TResult Function(AddWeight value)? addWeight,
    TResult Function(AddNote value)? addNote,
    TResult Function(ChooseVehicleId value)? chooseVehicleId,
    required TResult orElse(),
  }) {
    if (chooseVehicleId != null) {
      return chooseVehicleId(this);
    }
    return orElse();
  }
}

abstract class ChooseVehicleId implements DeliveryEvent {
  const factory ChooseVehicleId(final int id) = _$ChooseVehicleIdImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$ChooseVehicleIdImplCopyWith<_$ChooseVehicleIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeliveryState {
  String get pickupAddress => throw _privateConstructorUsedError;
  String get deliveryAddress => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  bool? get isError => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryStateCopyWith<DeliveryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryStateCopyWith<$Res> {
  factory $DeliveryStateCopyWith(
          DeliveryState value, $Res Function(DeliveryState) then) =
      _$DeliveryStateCopyWithImpl<$Res, DeliveryState>;
  @useResult
  $Res call(
      {String pickupAddress,
      String deliveryAddress,
      String weight,
      String? note,
      bool? isError,
      bool? isLoading});
}

/// @nodoc
class _$DeliveryStateCopyWithImpl<$Res, $Val extends DeliveryState>
    implements $DeliveryStateCopyWith<$Res> {
  _$DeliveryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupAddress = null,
    Object? deliveryAddress = null,
    Object? weight = null,
    Object? note = freezed,
    Object? isError = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      pickupAddress: null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      isError: freezed == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryStateImplCopyWith<$Res>
    implements $DeliveryStateCopyWith<$Res> {
  factory _$$DeliveryStateImplCopyWith(
          _$DeliveryStateImpl value, $Res Function(_$DeliveryStateImpl) then) =
      __$$DeliveryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pickupAddress,
      String deliveryAddress,
      String weight,
      String? note,
      bool? isError,
      bool? isLoading});
}

/// @nodoc
class __$$DeliveryStateImplCopyWithImpl<$Res>
    extends _$DeliveryStateCopyWithImpl<$Res, _$DeliveryStateImpl>
    implements _$$DeliveryStateImplCopyWith<$Res> {
  __$$DeliveryStateImplCopyWithImpl(
      _$DeliveryStateImpl _value, $Res Function(_$DeliveryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupAddress = null,
    Object? deliveryAddress = null,
    Object? weight = null,
    Object? note = freezed,
    Object? isError = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$DeliveryStateImpl(
      pickupAddress: null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      isError: freezed == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$DeliveryStateImpl implements _DeliveryState {
  const _$DeliveryStateImpl(
      {required this.pickupAddress,
      required this.deliveryAddress,
      required this.weight,
      this.note,
      this.isError,
      this.isLoading});

  @override
  final String pickupAddress;
  @override
  final String deliveryAddress;
  @override
  final String weight;
  @override
  final String? note;
  @override
  final bool? isError;
  @override
  final bool? isLoading;

  @override
  String toString() {
    return 'DeliveryState(pickupAddress: $pickupAddress, deliveryAddress: $deliveryAddress, weight: $weight, note: $note, isError: $isError, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryStateImpl &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickupAddress, deliveryAddress,
      weight, note, isError, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryStateImplCopyWith<_$DeliveryStateImpl> get copyWith =>
      __$$DeliveryStateImplCopyWithImpl<_$DeliveryStateImpl>(this, _$identity);
}

abstract class _DeliveryState implements DeliveryState {
  const factory _DeliveryState(
      {required final String pickupAddress,
      required final String deliveryAddress,
      required final String weight,
      final String? note,
      final bool? isError,
      final bool? isLoading}) = _$DeliveryStateImpl;

  @override
  String get pickupAddress;
  @override
  String get deliveryAddress;
  @override
  String get weight;
  @override
  String? get note;
  @override
  bool? get isError;
  @override
  bool? get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryStateImplCopyWith<_$DeliveryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
