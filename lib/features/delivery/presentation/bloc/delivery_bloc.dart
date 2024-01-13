import 'package:clean_project/features/delivery/domain/entities/delivery_fare_entity.dart';
import 'package:clean_project/features/delivery/domain/entities/locations_entity.dart';
import 'package:clean_project/features/delivery/domain/usecases/delivery_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_bloc.freezed.dart';

part 'delivery_event.dart';

part 'delivery_state.dart';

class DeliveryBloc extends Bloc<DeliveryEvent, DeliveryState> {
  final DeliveryUseCase deliveryUseCase;

  DeliveryBloc(this.deliveryUseCase) : super(DeliveryState.initialState()) {
    on<CalculateDeliveryFare>(_onCalculateDeliveryFare);
    on<AddPickupAddress>(_onAddPickupAddress);
    on<AddDeliveryAddress>(_onAddDeliveryAddress);
    on<AddWeight>(_onAddWeight);
    on<AddNote>(_onAddNote);
    on<ChooseVehicleId>(_onChooseVehicleId);
  }

  Future<void> _onCalculateDeliveryFare(CalculateDeliveryFare event, Emitter<DeliveryState> emit) async {
    emit(state.copyWith(isLoading: true));
    final data = await deliveryUseCase(
      parameters: DeliveryFare(
        userId: '1799',
        noContact: 'No',
        cityId: 1,
        tip: 1,
        bookedAs: 'Customer',
        mode: 'Cash',
        vehicleId: event.vehicleId,
        pickupAddress: state.pickupAddress,
        pickupLatitude: '25.118107',
        pickupLongitude: '55.200608',
        pickupName: 'Mall of the Emirates',
        pickupRoute: '1 / 2',
        pickupContact: '+971508756040',
        instructions: null,
        deliveryOtp: 'No',
        locations: Locations(
          address: 'Mall of the Emirates - Sheikh Zayed Road - Dubai - United Arab Emirates',
          name: 'Mall of the Emirates',
          latitude: '55.200608',
          longitude: '25.118107',
          deliveryOrder: 1,
          contact: 'No',
          content: 'Package',
          route: '1 / 2',
          weight: state.weight,
        ),
      ),
    );
    print('---------------------------------------------------------');
    print(data);
    print('---------------------------------------------------------');
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _onAddPickupAddress(AddPickupAddress event, Emitter<DeliveryState> emit) async {
    print('---------------------------------------------------------');
    print(event.pickupAddress);
    print('---------------------------------------------------------');
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _onAddDeliveryAddress(AddDeliveryAddress event, Emitter<DeliveryState> emit) async {
    print('---------------------------------------------------------');
    print(event.deliveryAddress);
    print('---------------------------------------------------------');
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _onAddWeight(AddWeight event, Emitter<DeliveryState> emit) async {
    print('---------------------------------------------------------');
    print(event.weight);
    print('---------------------------------------------------------');
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _onAddNote(AddNote event, Emitter<DeliveryState> emit) async {
    print('---------------------------------------------------------');
    print(event.note);
    print('---------------------------------------------------------');
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _onChooseVehicleId(ChooseVehicleId event, Emitter<DeliveryState> emit) async {
    print('---------------------------------------------------------');
    print(event.id);
    print('---------------------------------------------------------');
    emit(state.copyWith(isLoading: false));
  }
}
