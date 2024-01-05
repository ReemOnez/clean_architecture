import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/data/models/failure_model.dart';
import 'package:clean_project/core/services/connectivity_service.dart';
import 'package:clean_project/core/services/connectivity_service_interface.dart';
import 'package:logger/logger.dart';

abstract class BaseRepository {
  BaseRepository(this.logger);

  final Logger logger;
  ConnectivityServiceInterface connectivityServiceInterface = ConnectivityService();

  Future<DataResult<T>> request<T>({
    required Future<DataResult<T>> Function() remoteCall,
    Future<DataResult<T>> Function()? localCall,
    Future<DataResult<T>> Function()? successRemoteCall,
    Future<DataResult<int>> Function(T data)? saveRemoteDataCall,
  }) async {
    late DataResult<T> dataResult;
    if (connectivityServiceInterface.isOnline) {
      dataResult = await remoteCall();
      if (dataResult.isSuccessResult) {
        if (saveRemoteDataCall != null && dataResult.dataResult != null) {
          final saveResult = await saveRemoteDataCall.call(dataResult.dataResult as T);
          // logger.i('<BaseRepository>: Inserted rows count: ${saveResult.dataResult}');
          // if (saveResult.isFailure) {
          //   onCacheFailure?.call(saveResult.failure!);
          // } else {
          //   logger.i('<BaseRepository>: Inserted rows count: ${saveResult.data}');
          //   onCacheSuccess?.call(saveResult.data!);
          // }
        }
        final successRemoteCallData = await successRemoteCall?.call();
        if (successRemoteCallData != null && successRemoteCallData.isFailureResult) {
          dataResult = FailureResult(FailureModel(errorMessage: 'Failed to insert data into database'));
        }
      }
    } else {
      dataResult = (await localCall?.call()) ?? FailureResult(FailureModel(errorMessage: 'No internet connection'));
    }
    return dataResult;
  }
}
