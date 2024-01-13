// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_fare_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryFareModelImpl _$$DeliveryFareModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryFareModelImpl(
      cityId: json['cityId'] as int,
      userId: json['userId'] as String,
      tip: json['tip'] as int,
      bookedAs: json['bookedAs'] as String,
      mode: json['mode'] as String,
      vehicleId: json['vehicleId'] as int,
      pickupLatitude: json['pickupLatitude'] as String,
      pickupLongitude: json['pickupLongitude'] as String,
      pickupAddress: json['pickupAddress'] as String,
      pickupName: json['pickupName'] as String,
      pickupRoute: json['pickupRoute'] as String,
      pickupContact: json['pickupContact'] as String,
      instructions: json['instructions'] as String?,
      noContact: json['noContact'] as String,
      deliveryOtp: json['deliveryOtp'] as String,
      locations: json['locations'] == null
          ? null
          : LocationsModel.fromJson(json['locations'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeliveryFareModelImplToJson(
        _$DeliveryFareModelImpl instance) =>
    <String, dynamic>{
      'cityId': instance.cityId,
      'userId': instance.userId,
      'tip': instance.tip,
      'bookedAs': instance.bookedAs,
      'mode': instance.mode,
      'vehicleId': instance.vehicleId,
      'pickupLatitude': instance.pickupLatitude,
      'pickupLongitude': instance.pickupLongitude,
      'pickupAddress': instance.pickupAddress,
      'pickupName': instance.pickupName,
      'pickupRoute': instance.pickupRoute,
      'pickupContact': instance.pickupContact,
      'instructions': instance.instructions,
      'noContact': instance.noContact,
      'deliveryOtp': instance.deliveryOtp,
      'locations': instance.locations?.toJson(),
    };
