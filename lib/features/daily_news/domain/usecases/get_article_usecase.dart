import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/domain/usecases/base_use_case.dart';
import 'package:clean_project/features/daily_news/domain/entities/article.dart';
import 'package:clean_project/features/daily_news/domain/repositories/article_repository.dart';

class GetArticleUseCase implements BaseUseCase<List<ArticleEntity>?, void> {
  final ArticleRepository articleRepository;

  GetArticleUseCase(this.articleRepository);

  @override
  Future<DataResult<List<ArticleEntity>?>> call({void parameters}) {
    return articleRepository.getNewsArticles();
  }
}
