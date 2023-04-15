import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/presentation/bloc/helper_bloc/helper_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBloc<E, S> extends Bloc<E, S> {
  final HelperBloc helperBloc = HelperBloc();

  BaseBloc(super.initialState);

  futureWrapper<T>(Future<DataResult<T?>> Function() futureCallBack, bool useBaseLoader, void Function(SuccessResult<T?>) onSuccessCallBack,
      void Function(FailureResult) onErrorCallBack, void Function(bool) onLoadingChange) async {
    if (useBaseLoader) {
      helperBloc.add(const HelperBlocEvent.loadingChanged(true));
    } else {
      onLoadingChange(true);
    }
    DataResult<T?> data = await futureCallBack();
    if (useBaseLoader) {
      helperBloc.add(const HelperBlocEvent.loadingChanged(false));
    } else {
      onLoadingChange(false);
    }
    if (data.isSuccessResult) {
      onSuccessCallBack(data.successResult);
    } else {
      onErrorCallBack(data.failureResult);
    }
  }
}
