import 'package:clean_project/core/data/models/data_result_model.dart';

abstract class BaseUseCase<Type, Parameter> {
  Future<DataResult<Type>> call({Parameter parameters});
}
