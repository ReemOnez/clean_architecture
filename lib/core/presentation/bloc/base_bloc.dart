import 'dart:async';

import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/presentation/bloc/helper_bloc/helper_bloc.dart';
import 'package:clean_project/helpers/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/src/logger.dart';

class BaseBloc<E, S> extends Bloc<E, S> {
  final Logger? logger;
  late final HelperBloc helperBloc;

  BaseBloc(super.initialState, {this.logger}) {
    helperBloc = HelperBloc();
  }

  futureWrapper<T>({
    required Future<DataResult<T?>> Function() futureCallBack,
    bool useBaseLoader = false,
    FutureOr<void> Function(T?)? onSuccessCallBack,
    FutureOr<void> Function(FailureResult?)? onErrorCallBack,
    FutureOr<void> Function(bool)? onLoadingChange,
  }) async {
    // if (useBaseLoader) {
    //   helperBloc.add(const HelperBlocEvent.loadingChanged(true));
    // } else {
    //   onLoadingChange(true);
    // }
    try {
      DataResult<T?> result = await futureCallBack();
      if (result.isSuccessResult) {
        T? data = result.dataResult;
        await onSuccessCallBack?.call(data);
      } else {
        final failure = result.failure;
        await onErrorCallBack?.call(FailureResult(failure));
      }
    } catch (error, stacktrace) {
      logger?.e(ErrorLogType.baseBlocError, error: error, stackTrace: stacktrace);
    }
    // if (useBaseLoader) {
    //   helperBloc.add(const HelperBlocEvent.loadingChanged(false));
    // } else {
    //   onLoadingChange(false);
    // }
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
