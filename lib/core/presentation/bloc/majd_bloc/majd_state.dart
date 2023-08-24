part of 'majd_bloc.dart';

@freezed
class MajdState with _$MajdState {
  const factory MajdState(bool temp) = _MajdState;

  factory MajdState.initial() => const MajdState(true);
}
