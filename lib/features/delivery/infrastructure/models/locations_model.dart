import 'package:clean_project/features/delivery/domain/entities/locations_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locations_model.freezed.dart';

part 'locations_model.g.dart';

@freezed
class LocationsModel with _$LocationsModel {
  @JsonSerializable(explicitToJson: true)
  const factory LocationsModel({
    required String address,
    required String name,
    required String latitude,
    required String longitude,
    required int deliveryOrder,
    required String contact,
    required String content,
    required String route,
    required String weight,
  }) = _Locations;

  factory LocationsModel.fromJson(Map<String, dynamic> json) => _$LocationsModelFromJson(json);

  factory LocationsModel.fromDomain(Locations locations) {
    return LocationsModel(
      address: locations.address,
      name: locations.name,
      latitude: locations.latitude,
      longitude: locations.longitude,
      deliveryOrder: locations.deliveryOrder,
      contact: locations.contact,
      content: locations.content,
      route: locations.route,
      weight: locations.weight,
    );
  }
}
