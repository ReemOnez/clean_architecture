import 'package:clean_project/core/presentation/bloc/base_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'majd_bloc.freezed.dart';

part 'majd_state.dart';

part 'majd_event.dart';

class ExampleBloc extends BaseBloc<MajdEvent, MajdState> {
  ExampleBloc() : super(MajdState.initial()) {
    on<TempEvent>(_onTempEvent);
  }
  int i = 0;
  Future<void> _onTempEvent(TempEvent event, Emitter<MajdState> emit) async {
    runFunctionWithContext((context) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('context triggered, $i time')));
    });
    i++;
    emit(state);
  }
}
