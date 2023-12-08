import 'package:clean_project/core/data/models/data_result_model.dart';

abstract class BaseUseCase<T, P> {
  Future<DataResult<T>> execute(P parameters);
}
