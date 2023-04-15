import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'helper_bloc.freezed.dart';

part 'helper_state.dart';

part 'helper_event.dart';

class HelperBloc extends Bloc<HelperBlocEvent, HelperBlocState> {
  HelperBloc() : super(HelperBlocState.initial()) {
    on<LoadingChanged>(_onLoadingChanged);
    /// todo: write the rest code for events and state
  }

  Future<void> _onLoadingChanged(LoadingChanged event, Emitter<HelperBlocState> emit) async {
    emit(state.copyWith(isLoading: event.isLoading));
  }
}
