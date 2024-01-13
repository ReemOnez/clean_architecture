import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/features/delivery/domain/entities/delivery_fare_entity.dart';
import 'package:clean_project/features/delivery/infrastructure/models/delivery_fare_model.dart';

abstract class IDeliveryRepository {
  Future<DataResult<DeliveryFareModel?>> deliveryFareCalculate(DeliveryFare deliveryFare);
}
