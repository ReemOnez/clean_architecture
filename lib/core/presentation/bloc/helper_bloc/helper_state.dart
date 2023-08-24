part of 'helper_bloc.dart';

@freezed
class HelperBlocState with _$HelperBlocState {
  const factory HelperBlocState({
    required bool isLoading,
    //  required ContextCallback contextCallback,
    FailureResult? failure,
    void Function(BuildContext)? contextCallback,
    // Object? unknownError,
  }) = _HelperBlocState;

  factory HelperBlocState.initial() => const HelperBlocState(
        isLoading: false,
        contextCallback: null,
        // contextCallback: (_) {},
      );
}
