// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_fare_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryFareModel _$DeliveryFareModelFromJson(Map<String, dynamic> json) {
  return _DeliveryFareModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryFareModel {
  int get cityId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get tip => throw _privateConstructorUsedError;
  String get bookedAs => throw _privateConstructorUsedError;
  String get mode => throw _privateConstructorUsedError;
  int get vehicleId => throw _privateConstructorUsedError;
  String get pickupLatitude => throw _privateConstructorUsedError;
  String get pickupLongitude => throw _privateConstructorUsedError;
  String get pickupAddress => throw _privateConstructorUsedError;
  String get pickupName => throw _privateConstructorUsedError;
  String get pickupRoute => throw _privateConstructorUsedError;
  String get pickupContact => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  String get noContact => throw _privateConstructorUsedError;
  String get deliveryOtp => throw _privateConstructorUsedError;
  LocationsModel? get locations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryFareModelCopyWith<DeliveryFareModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryFareModelCopyWith<$Res> {
  factory $DeliveryFareModelCopyWith(
          DeliveryFareModel value, $Res Function(DeliveryFareModel) then) =
      _$DeliveryFareModelCopyWithImpl<$Res, DeliveryFareModel>;
  @useResult
  $Res call(
      {int cityId,
      String userId,
      int tip,
      String bookedAs,
      String mode,
      int vehicleId,
      String pickupLatitude,
      String pickupLongitude,
      String pickupAddress,
      String pickupName,
      String pickupRoute,
      String pickupContact,
      String? instructions,
      String noContact,
      String deliveryOtp,
      LocationsModel? locations});

  $LocationsModelCopyWith<$Res>? get locations;
}

/// @nodoc
class _$DeliveryFareModelCopyWithImpl<$Res, $Val extends DeliveryFareModel>
    implements $DeliveryFareModelCopyWith<$Res> {
  _$DeliveryFareModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? userId = null,
    Object? tip = null,
    Object? bookedAs = null,
    Object? mode = null,
    Object? vehicleId = null,
    Object? pickupLatitude = null,
    Object? pickupLongitude = null,
    Object? pickupAddress = null,
    Object? pickupName = null,
    Object? pickupRoute = null,
    Object? pickupContact = null,
    Object? instructions = freezed,
    Object? noContact = null,
    Object? deliveryOtp = null,
    Object? locations = freezed,
  }) {
    return _then(_value.copyWith(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
      bookedAs: null == bookedAs
          ? _value.bookedAs
          : bookedAs // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleId: null == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as int,
      pickupLatitude: null == pickupLatitude
          ? _value.pickupLatitude
          : pickupLatitude // ignore: cast_nullable_to_non_nullable
              as String,
      pickupLongitude: null == pickupLongitude
          ? _value.pickupLongitude
          : pickupLongitude // ignore: cast_nullable_to_non_nullable
              as String,
      pickupAddress: null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String,
      pickupName: null == pickupName
          ? _value.pickupName
          : pickupName // ignore: cast_nullable_to_non_nullable
              as String,
      pickupRoute: null == pickupRoute
          ? _value.pickupRoute
          : pickupRoute // ignore: cast_nullable_to_non_nullable
              as String,
      pickupContact: null == pickupContact
          ? _value.pickupContact
          : pickupContact // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      noContact: null == noContact
          ? _value.noContact
          : noContact // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryOtp: null == deliveryOtp
          ? _value.deliveryOtp
          : deliveryOtp // ignore: cast_nullable_to_non_nullable
              as String,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as LocationsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationsModelCopyWith<$Res>? get locations {
    if (_value.locations == null) {
      return null;
    }

    return $LocationsModelCopyWith<$Res>(_value.locations!, (value) {
      return _then(_value.copyWith(locations: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryFareModelImplCopyWith<$Res>
    implements $DeliveryFareModelCopyWith<$Res> {
  factory _$$DeliveryFareModelImplCopyWith(_$DeliveryFareModelImpl value,
          $Res Function(_$DeliveryFareModelImpl) then) =
      __$$DeliveryFareModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int cityId,
      String userId,
      int tip,
      String bookedAs,
      String mode,
      int vehicleId,
      String pickupLatitude,
      String pickupLongitude,
      String pickupAddress,
      String pickupName,
      String pickupRoute,
      String pickupContact,
      String? instructions,
      String noContact,
      String deliveryOtp,
      LocationsModel? locations});

  @override
  $LocationsModelCopyWith<$Res>? get locations;
}

/// @nodoc
class __$$DeliveryFareModelImplCopyWithImpl<$Res>
    extends _$DeliveryFareModelCopyWithImpl<$Res, _$DeliveryFareModelImpl>
    implements _$$DeliveryFareModelImplCopyWith<$Res> {
  __$$DeliveryFareModelImplCopyWithImpl(_$DeliveryFareModelImpl _value,
      $Res Function(_$DeliveryFareModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? userId = null,
    Object? tip = null,
    Object? bookedAs = null,
    Object? mode = null,
    Object? vehicleId = null,
    Object? pickupLatitude = null,
    Object? pickupLongitude = null,
    Object? pickupAddress = null,
    Object? pickupName = null,
    Object? pickupRoute = null,
    Object? pickupContact = null,
    Object? instructions = freezed,
    Object? noContact = null,
    Object? deliveryOtp = null,
    Object? locations = freezed,
  }) {
    return _then(_$DeliveryFareModelImpl(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
      bookedAs: null == bookedAs
          ? _value.bookedAs
          : bookedAs // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleId: null == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as int,
      pickupLatitude: null == pickupLatitude
          ? _value.pickupLatitude
          : pickupLatitude // ignore: cast_nullable_to_non_nullable
              as String,
      pickupLongitude: null == pickupLongitude
          ? _value.pickupLongitude
          : pickupLongitude // ignore: cast_nullable_to_non_nullable
              as String,
      pickupAddress: null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String,
      pickupName: null == pickupName
          ? _value.pickupName
          : pickupName // ignore: cast_nullable_to_non_nullable
              as String,
      pickupRoute: null == pickupRoute
          ? _value.pickupRoute
          : pickupRoute // ignore: cast_nullable_to_non_nullable
              as String,
      pickupContact: null == pickupContact
          ? _value.pickupContact
          : pickupContact // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      noContact: null == noContact
          ? _value.noContact
          : noContact // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryOtp: null == deliveryOtp
          ? _value.deliveryOtp
          : deliveryOtp // ignore: cast_nullable_to_non_nullable
              as String,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as LocationsModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DeliveryFareModelImpl implements _DeliveryFareModel {
  const _$DeliveryFareModelImpl(
      {required this.cityId,
      required this.userId,
      required this.tip,
      required this.bookedAs,
      required this.mode,
      required this.vehicleId,
      required this.pickupLatitude,
      required this.pickupLongitude,
      required this.pickupAddress,
      required this.pickupName,
      required this.pickupRoute,
      required this.pickupContact,
      required this.instructions,
      required this.noContact,
      required this.deliveryOtp,
      required this.locations});

  factory _$DeliveryFareModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryFareModelImplFromJson(json);

  @override
  final int cityId;
  @override
  final String userId;
  @override
  final int tip;
  @override
  final String bookedAs;
  @override
  final String mode;
  @override
  final int vehicleId;
  @override
  final String pickupLatitude;
  @override
  final String pickupLongitude;
  @override
  final String pickupAddress;
  @override
  final String pickupName;
  @override
  final String pickupRoute;
  @override
  final String pickupContact;
  @override
  final String? instructions;
  @override
  final String noContact;
  @override
  final String deliveryOtp;
  @override
  final LocationsModel? locations;

  @override
  String toString() {
    return 'DeliveryFareModel(cityId: $cityId, userId: $userId, tip: $tip, bookedAs: $bookedAs, mode: $mode, vehicleId: $vehicleId, pickupLatitude: $pickupLatitude, pickupLongitude: $pickupLongitude, pickupAddress: $pickupAddress, pickupName: $pickupName, pickupRoute: $pickupRoute, pickupContact: $pickupContact, instructions: $instructions, noContact: $noContact, deliveryOtp: $deliveryOtp, locations: $locations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryFareModelImpl &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tip, tip) || other.tip == tip) &&
            (identical(other.bookedAs, bookedAs) ||
                other.bookedAs == bookedAs) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.pickupLatitude, pickupLatitude) ||
                other.pickupLatitude == pickupLatitude) &&
            (identical(other.pickupLongitude, pickupLongitude) ||
                other.pickupLongitude == pickupLongitude) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.pickupName, pickupName) ||
                other.pickupName == pickupName) &&
            (identical(other.pickupRoute, pickupRoute) ||
                other.pickupRoute == pickupRoute) &&
            (identical(other.pickupContact, pickupContact) ||
                other.pickupContact == pickupContact) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.noContact, noContact) ||
                other.noContact == noContact) &&
            (identical(other.deliveryOtp, deliveryOtp) ||
                other.deliveryOtp == deliveryOtp) &&
            (identical(other.locations, locations) ||
                other.locations == locations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cityId,
      userId,
      tip,
      bookedAs,
      mode,
      vehicleId,
      pickupLatitude,
      pickupLongitude,
      pickupAddress,
      pickupName,
      pickupRoute,
      pickupContact,
      instructions,
      noContact,
      deliveryOtp,
      locations);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryFareModelImplCopyWith<_$DeliveryFareModelImpl> get copyWith =>
      __$$DeliveryFareModelImplCopyWithImpl<_$DeliveryFareModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryFareModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryFareModel implements DeliveryFareModel {
  const factory _DeliveryFareModel(
      {required final int cityId,
      required final String userId,
      required final int tip,
      required final String bookedAs,
      required final String mode,
      required final int vehicleId,
      required final String pickupLatitude,
      required final String pickupLongitude,
      required final String pickupAddress,
      required final String pickupName,
      required final String pickupRoute,
      required final String pickupContact,
      required final String? instructions,
      required final String noContact,
      required final String deliveryOtp,
      required final LocationsModel? locations}) = _$DeliveryFareModelImpl;

  factory _DeliveryFareModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryFareModelImpl.fromJson;

  @override
  int get cityId;
  @override
  String get userId;
  @override
  int get tip;
  @override
  String get bookedAs;
  @override
  String get mode;
  @override
  int get vehicleId;
  @override
  String get pickupLatitude;
  @override
  String get pickupLongitude;
  @override
  String get pickupAddress;
  @override
  String get pickupName;
  @override
  String get pickupRoute;
  @override
  String get pickupContact;
  @override
  String? get instructions;
  @override
  String get noContact;
  @override
  String get deliveryOtp;
  @override
  LocationsModel? get locations;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryFareModelImplCopyWith<_$DeliveryFareModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
