import 'package:clean_project/features/delivery/domain/entities/locations_entity.dart';

class DeliveryFare {
  final int cityId;
  final String userId;
  final int tip;
  final String bookedAs;
  final String mode;
  final int vehicleId;
  final String pickupLatitude;
  final String pickupLongitude;
  final String pickupAddress;
  final String pickupName;
  final String pickupRoute;
  final String pickupContact;
  final String? instructions;
  final String noContact;
  final String deliveryOtp;
  final Locations locations;

  DeliveryFare({
    required this.cityId,
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
    required this.locations,
  });
}