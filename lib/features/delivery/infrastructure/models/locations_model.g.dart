// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationsImpl _$$LocationsImplFromJson(Map<String, dynamic> json) =>
    _$LocationsImpl(
      address: json['address'] as String,
      name: json['name'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      deliveryOrder: json['deliveryOrder'] as int,
      contact: json['contact'] as String,
      content: json['content'] as String,
      route: json['route'] as String,
      weight: json['weight'] as String,
    );

Map<String, dynamic> _$$LocationsImplToJson(_$LocationsImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'deliveryOrder': instance.deliveryOrder,
      'contact': instance.contact,
      'content': instance.content,
      'route': instance.route,
      'weight': instance.weight,
    };
