import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataResult<List<ArticleEntity>?>> getNewsArticles();
}
