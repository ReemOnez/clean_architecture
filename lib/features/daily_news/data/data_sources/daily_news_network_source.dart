import 'package:clean_project/core/data/network_data_source/network_data_source.dart';
import 'package:clean_project/features/daily_news/data/models/article_model.dart';

abstract class DailyNewsRemoteDataSource {
  Future<List<ArticleModel>> getAllArticles();
}

class DailyNewsRemoteDataSourceImpl implements DailyNewsRemoteDataSource {
  late NetworkDataSource networkDataSource;


  @override
  Future<List<ArticleModel>> getAllArticles() {

  }
}
