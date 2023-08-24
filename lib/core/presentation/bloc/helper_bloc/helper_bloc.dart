import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'helper_bloc.freezed.dart';

part 'helper_state.dart';

part 'helper_event.dart';

class HelperBloc extends Bloc<HelperBlocEvent, HelperBlocState> {
  HelperBloc() : super(HelperBlocState.initial()) {
    on<LoadingChanged>(_onLoadingChanged);
    on<FailureCleared>(_onFailureCleared);
    on<FailureHappened>(_onFailureHappened);
    on<ContextCallbackTriggered>(_onContextCallbackTriggered);
  }

  Future<void> _onLoadingChanged(LoadingChanged event, Emitter<HelperBlocState> emit) async {
    emit(state.copyWith(isLoading: event.isLoading));
  }

  Future<void> _onContextCallbackTriggered(ContextCallbackTriggered event, Emitter<HelperBlocState> emit) async {
    emit(state.copyWith(contextCallback: event.callback));
  }

  Future<void> _onFailureCleared(FailureCleared event, Emitter<HelperBlocState> emit) async {
    emit(state.copyWith(failure: null));
  }

  Future<void> _onFailureHappened(FailureHappened event, Emitter<HelperBlocState> emit) async {
    emit(state.copyWith(failure: event.failure));
  }
}
