import 'package:clean_project/core/data/models/failure_model.dart';

abstract class DataResult<T> {
  bool get isSuccessResult => this is SuccessResult;

  bool get isFailureResult => this is FailureResult;

  FailureResult get failureResult => this as FailureResult;

  SuccessResult<T> get successResult => this as SuccessResult<T>;

  FailureModel get failure => (this as FailureResult).failureModel;

  T? get dataResult => (this as SuccessResult).data;
}

class FailureResult<T> extends DataResult<T> {
  final FailureModel failureModel;

  FailureResult(this.failureModel);
}

class SuccessResult<T> extends DataResult<T> {
  final T? data;

  SuccessResult(this.data);
}
