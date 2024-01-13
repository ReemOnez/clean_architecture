import 'package:clean_project/features/delivery/domain/entities/delivery_fare_entity.dart';
import 'package:clean_project/features/delivery/infrastructure/models/locations_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_fare_model.freezed.dart';

part 'delivery_fare_model.g.dart';

@freezed
class DeliveryFareModel with _$DeliveryFareModel {
  @JsonSerializable(explicitToJson: true)
  const factory DeliveryFareModel({
    required int cityId,
    required String userId,
    required int tip,
    required String bookedAs,
    required String mode,
    required int vehicleId,
    required String pickupLatitude,
    required String pickupLongitude,
    required String pickupAddress,
    required String pickupName,
    required String pickupRoute,
    required String pickupContact,
    required String? instructions,
    required String noContact,
    required String deliveryOtp,
    required LocationsModel? locations,
  }) = _DeliveryFareModel;

  factory DeliveryFareModel.fromJson(Map<String, dynamic> json) => _$DeliveryFareModelFromJson(json);

  factory DeliveryFareModel.fromDomain(DeliveryFare deliveryFare) {
    return DeliveryFareModel(
      cityId: deliveryFare.cityId,
      userId: deliveryFare.userId,
      tip: deliveryFare.tip,
      bookedAs: deliveryFare.bookedAs,
      mode: deliveryFare.mode,
      vehicleId: deliveryFare.vehicleId,
      pickupLatitude: deliveryFare.pickupLatitude,
      pickupLongitude: deliveryFare.pickupLongitude,
      pickupAddress: deliveryFare.pickupAddress,
      pickupName: deliveryFare.pickupName,
      pickupRoute: deliveryFare.pickupRoute,
      pickupContact: deliveryFare.pickupContact,
      instructions: deliveryFare.instructions,
      noContact: deliveryFare.noContact,
      deliveryOtp: deliveryFare.deliveryOtp,
      locations: LocationsModel.fromDomain(deliveryFare.locations),
    );
  }
}
