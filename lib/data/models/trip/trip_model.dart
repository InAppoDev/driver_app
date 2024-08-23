// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/trip/trip_details_model.dart';

part 'trip_model.freezed.dart';

part 'trip_model.g.dart';

@freezed
class TripModel with _$TripModel {
  const factory TripModel({
    double? miles,
    @Default([]) List<TripDetailsModel> details,
  }) = _TripModel;

  factory TripModel.fromJson(Map<String, dynamic> json) =>
      _$TripModelFromJson(json);
}
