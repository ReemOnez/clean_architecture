import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/domain/repositories/base_repository.dart';
import 'package:clean_project/features/delivery/domain/entities/delivery_fare_entity.dart';
import 'package:clean_project/features/delivery/domain/repositories/i_delivery_fare_repository.dart';
import 'package:clean_project/features/delivery/infrastructure/data_sources/local/todo_local_data_source.dart';
import 'package:clean_project/features/delivery/infrastructure/data_sources/remote/delivery_remote_data_source.dart';
import 'package:clean_project/features/delivery/infrastructure/models/delivery_fare_model.dart';

class DeliveryRepository extends BaseRepository implements IDeliveryRepository {
  DeliveryRepository(
    super.logger,
    this.remoteDataSource,
    this.localDataSource,
  );

  final DeliveryRemoteDataSource remoteDataSource;
  final DeliveryLocalDataSource localDataSource;

  @override
  Future<DataResult<DeliveryFareModel?>> deliveryFareCalculate(DeliveryFare deliveryFare) => request(
        remoteCall: () => remoteDataSource.deliveryFareCalculate(deliveryFare),
        // saveRemoteDataCall: (deliveryFares) => {},
        // localCall: localDataSo,
      );
}
