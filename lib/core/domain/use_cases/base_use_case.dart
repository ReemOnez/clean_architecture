import 'package:clean_project/core/data/models/data_result_model.dart';

abstract class BaseUseCase {
  Future<DataResult<T>> execute<T,P>(P parameters);
}
