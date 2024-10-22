import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_model.freezed.dart';
part 'monthly_model.g.dart';


@freezed
class MonthlyModel with _$MonthlyModel {
  const factory MonthlyModel({

     required int dispatches,
    @JsonKey(name: 'total_miles') required int totalMiles,
    @JsonKey(name: 'check_calls') required int checkCalls,
    @JsonKey(name: 'drive_time_hours') required int driveTimeHours,
  }) = _MonthlyModel;

  factory MonthlyModel.fromJson(Map<String, dynamic> json) =>
      _$MonthlyModelFromJson(json);
}
