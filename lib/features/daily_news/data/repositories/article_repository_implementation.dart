import 'package:clean_project/core/data/local_data_source/local_data_source.dart';
import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/data/network_data_source/network_data_source.dart';
import 'package:clean_project/core/domain/repositories/base_repository.dart';
import 'package:clean_project/features/daily_news/data/models/article_model.dart';
import 'package:clean_project/features/daily_news/domain/repositories/article_repository.dart';
import 'package:clean_project/helpers/constants/urls.dart';

class ArticleRepositoryImpl extends BaseRepository implements ArticleRepository {
  final NetworkDataSource networkDataSource;
  final LocalDataSource localDataSource;

  ArticleRepositoryImpl(this.networkDataSource, this.localDataSource);

  @override
  Future<DataResult<List<ArticleModel>?>> getNewsArticles() async {
    return request(
      () async {
        return await networkDataSource.get(endPoint: Urls.photosUrl);
        //as DataResult<List<ArticleModel>>;
      },
      //   localCall: () {
      // return localDataSource.getObject(tableName: 'jshb', whereCondition: '', values: [], fromJson: () {});
      //   },
      //   successRemoteCall: (data) {
      //     return localDataSource.insertObject(tableName: 'kfjv', data: data.toJson());
      //   }
    );
  }
}
