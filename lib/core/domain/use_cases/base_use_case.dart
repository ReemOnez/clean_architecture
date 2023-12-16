import 'package:clean_project/core/data/models/data_result_model.dart';

abstract class BaseUseCase<Type, Parameters> {
  Future<DataResult<Type>> call({Parameters parameters});
}
