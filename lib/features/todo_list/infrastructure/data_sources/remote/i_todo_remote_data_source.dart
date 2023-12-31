import 'package:clean_project/core/data/data_sources/remote/remote_data_source.dart';
import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/features/todo_list/domain/entities/todo_entity.dart';

class IToDoRemoteDataSource extends RemoteDataSource{
  IToDoRemoteDataSource(super.dio, super.logger);
}
