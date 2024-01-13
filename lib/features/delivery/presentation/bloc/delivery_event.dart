part of 'delivery_bloc.dart';

@freezed
class DeliveryEvent with _$DeliveryEvent {
  const factory DeliveryEvent.calculateDeliveryFare(int vehicleId) = CalculateDeliveryFare;

  const factory DeliveryEvent.addPickupAddress(String pickupAddress) = AddPickupAddress;

  const factory DeliveryEvent.addDeliveryAddress(String deliveryAddress) = AddDeliveryAddress;

  const factory DeliveryEvent.addWeight(String weight) = AddWeight;

  const factory DeliveryEvent.addNote(String note) = AddNote;

  const factory DeliveryEvent.chooseVehicleId(int id) = ChooseVehicleId;
}
