import 'package:clean_project/core/data/local_data_source/local_data_source.dart';
import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/data/network_data_source/network_data_source.dart';
import 'package:clean_project/core/domain/repositories/base_repository.dart';
import 'package:clean_project/features/daily_news/data/models/article_model.dart';
import 'package:clean_project/features/daily_news/domain/repositories/article_repository.dart';

// class ArticleRepositoryImpl extends BaseRepository implements ArticleRepository {
//   Future<DataResult<ArticleModel>> getNewsArticle() {
//     late NetworkDataSource networkDataSource;
//     late LocalDataSource localDataSource;
//
//     return request(() {
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
