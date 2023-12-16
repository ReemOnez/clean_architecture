import 'package:clean_project/features/daily_news/domain/usecases/get_article_usecase.dart';
import 'package:clean_project/features/daily_news/presentation/bloc/daily_news_event.dart';
import 'package:clean_project/features/daily_news/presentation/bloc/daily_news_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DailyNewsBloc extends Bloc<ArticlesEvent, ArticlesState> {

  final GetArticleUseCase _getArticleUseCase;

  DailyNewsBloc(this._getArticleUseCase) : super(const ArticlesLoading()) {
    on<GetArticlesEvent>(_onGetArticlesEvent);
  }

  Future<void> _onGetArticlesEvent(GetArticlesEvent event, Emitter<ArticlesState> emit) async {
    final dataState = await _getArticleUseCase();

    print(dataState.isSuccessResult);
    // if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
    //   emit(
    //       RemoteArticlesDone(dataState.data!)
    //   );
    // }
    //
    // if (dataState is DataFailed) {
    //   emit(
    //       RemoteArticlesError(dataState.error!)
    //   );
    // }
  }
}
