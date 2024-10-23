import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/lifetime/lifetime_model.dart';
import 'package:tms_driver/data/models/monthly/monthly_model.dart';

part 'personal_stats_model.freezed.dart';

part 'personal_stats_model.g.dart';

@freezed
class PersonalStatsModel with _$PersonalStatsModel {
  const factory PersonalStatsModel({
    @JsonKey(name: 'current_month') required int currentMonth,
    required MonthlyModel monthly,
    required LifeTimeModel? lifeTime,
  }) = _PersonalStatsModel;

  factory PersonalStatsModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalStatsModelFromJson(json);
}
