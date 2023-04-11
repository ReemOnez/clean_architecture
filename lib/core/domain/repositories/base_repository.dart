import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/data/models/failure_model.dart';
import 'package:clean_project/core/services/connectivity_service.dart';
import 'package:clean_project/core/services/connectivity_service_interface.dart';

abstract class BaseRepository {
  ConnectivityServiceInterface connectivityServiceInterface = ConnectivityService();

  Future<DataResult<T>> request<T>(Future<DataResult<T>> Function() remoteCall,
      {Future<DataResult<T>> Function()? localCall, Future<DataResult<int>> Function(T? data)? successRemoteCall}) async {
    late DataResult<T> data;
    if (connectivityServiceInterface.isOnline) {
      data = await remoteCall();
      if (data.isSuccessResult) {
        final successRemoteCallData = await successRemoteCall?.call(data.dataResult);
        if (successRemoteCallData != null && successRemoteCallData.isFailureResult) {
          data = FailureResult(FailureModel(errorMessage: 'Failed to insert data into database'));
        }
      }
    } else {
      data = (await localCall?.call()) ?? FailureResult(FailureModel(errorMessage: 'No internet connection'));
    }
    return data;
  }
}

/// Testing Example
// abstract class IFakeRepository {
//   Future<DataResult<bool>> logIn(String name, String password);
// }
//
// class FakerRepository extends BaseRepository implements IFakeRepository {
//   late NetworkDataSource networkDataSource;
//   late LocalDataSource localDataSource;
//
//   @override
//   Future<DataResult<bool>> logIn(String name, String password) {
//    return  request(() {
//       /// actual code for Login feature
//       return networkDataSource.post(endPoint: 'sjhdbskbv/sdkvjhb/aldvn', parameters: {}, data: {"name": name, "password": password});
//     }, localCall: () {
//       return localDataSource.getObject(tableName: 'jshb', whereCondition: '', values: [], fromJson: () {})
//       ,
//     },
//         successRemoteCall: (data) {
//           return localDataSource.insertObject(tableName: 'kfjv', data: data.toJson());
//         });
//   }
// }
