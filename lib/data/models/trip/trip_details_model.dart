// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_details_model.freezed.dart';

part 'trip_details_model.g.dart';

@freezed
class TripDetailsModel with _$TripDetailsModel {
  const factory TripDetailsModel({
    String? name,
    String? address,
    String? data,
  }) = _TripDetailsModel;

  factory TripDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$TripDetailsModelFromJson(json);
}
