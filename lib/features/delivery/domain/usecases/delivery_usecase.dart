import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/domain/use_cases/base_use_case.dart';
import 'package:clean_project/features/delivery/domain/repositories/i_delivery_fare_repository.dart';

class DeliveryUseCase implements BaseUseCase {
  final IDeliveryRepository deliveryRepository;

  DeliveryUseCase(this.deliveryRepository);

  @override
  Future<DataResult> call({parameters}) {
    return deliveryRepository.deliveryFareCalculate(parameters);
  }
}
