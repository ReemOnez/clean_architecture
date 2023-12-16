import 'package:clean_project/features/daily_news/domain/entities/article.dart';
import 'package:equatable/equatable.dart';

abstract class ArticlesState extends Equatable {
  final List<ArticleEntity>? articles;

  const ArticlesState({this.articles});

  @override
  List<Object> get props => [articles!];
}

class ArticlesLoading extends ArticlesState {
  const ArticlesLoading();
}

class ArticlesDone extends ArticlesState {
  const ArticlesDone(List<ArticleEntity> article) : super(articles: article);
}

class ArticlesError extends ArticlesState {
  const ArticlesError(String error);
}
