part of 'update_bloc.dart';

enum UpdateStatus { initial, loading, failure, success }

@freezed
class UpdateState with _$UpdateState {
  const factory UpdateState({
    required UpdateStatus status,
    int? etaTimestamp,
    String? comment,
    required int tripId,
    required String type,
  }) = _UpdateState;

  factory UpdateState.initial() => const UpdateState(
        status: UpdateStatus.initial,
        tripId: 0,
        type: '',
      );
}
