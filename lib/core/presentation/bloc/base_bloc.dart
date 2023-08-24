import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/presentation/bloc/helper_bloc/helper_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBloc<E, S> extends Bloc<E, S> {
  final HelperBloc helperBloc = HelperBloc();

  BaseBloc(super.initialState);

  futureWrapper<T>(
    Future<DataResult<T?>> Function() futureCallBack, {
    required bool useBaseLoader,
    required void Function(SuccessResult<T?>) onSuccessCallBack,
    required void Function(FailureResult) onErrorCallBack,
    required void Function(bool) onLoadingChange,
    required void Function() onUnKnownError,
  }) async {
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

  void defaultErrorHandler(String errorMessage) {
    runFunctionWithContext((context) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(errorMessage)));
    });
  }

  void runFunctionWithContext(void Function(BuildContext) functionWithContext) {
    helperBloc.add(HelperBlocEvent.contextCallbackTriggered(functionWithContext));
  }
}
