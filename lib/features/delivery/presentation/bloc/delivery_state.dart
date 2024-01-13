part of 'delivery_bloc.dart';

@freezed
abstract class DeliveryState with _$DeliveryState {
  const factory DeliveryState({
    required String pickupAddress,
    required String deliveryAddress,
    required String weight,
    String? note,
    bool? isError,
    bool? isLoading,
  }) = _DeliveryState;

  factory DeliveryState.initialState() => const DeliveryState(
        pickupAddress: '',
        deliveryAddress: '',
        weight: '',
        note: '',
        isError: false,
        isLoading: false,
      );
//   const factory DeliveryState.initialState() = _InitialDeliveryState;

//   const factory DeliveryState.loading() = _LoadingDeliveryState;

//   const factory DeliveryState.loaded() = _LoadedDeliveryState;
}
