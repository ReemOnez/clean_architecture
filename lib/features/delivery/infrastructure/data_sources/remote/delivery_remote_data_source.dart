import 'package:clean_project/core/data/data_sources/remote/remote_data_source.dart';
import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/features/delivery/domain/entities/delivery_fare_entity.dart';
import 'package:clean_project/features/delivery/infrastructure/data_sources/remote/i_delivery_remote_data_source.dart';
import 'package:clean_project/features/delivery/infrastructure/models/delivery_fare_model.dart';

class DeliveryRemoteDataSource extends RemoteDataSource implements IDeliveryRemoteDataSource {
  DeliveryRemoteDataSource(super.dio, super.logger);

  static const String _deliveryFareEndPoint = 'api/multiple/delivery-fare/calculate';

  @override
  Future<DataResult<DeliveryFareModel?>> deliveryFareCalculate(DeliveryFare deliveryFare) => post(
        endPoint: _deliveryFareEndPoint,
        fromJson: DeliveryFareModel.fromJson,
        data: DeliveryFareModel.fromDomain(deliveryFare).toJson(),
      );
}
