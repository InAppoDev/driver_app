// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'call_type_result_model.freezed.dart';

@freezed
class CallTypeResultModel with _$CallTypeResultModel {
  const factory CallTypeResultModel({
    required String type,
    int? etaTimestamp,
    String? comment,
    @Default([]) List<String> documentIds,
    bool? isCleanBol,
    bool? isLoadReject,
  }) = _CallTypeResultModel;
}
