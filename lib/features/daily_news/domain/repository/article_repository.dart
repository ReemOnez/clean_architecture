import 'package:clean_project/core/data/models/data_result_model.dart';

abstract class ArticleRepository {
  Future<DataResult<bool>> getNewsArticle();
}