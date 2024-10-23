import 'package:freezed_annotation/freezed_annotation.dart';

part 'lifetime_model.freezed.dart';
part 'lifetime_model.g.dart';


@freezed
class LifeTimeModel with _$LifeTimeModel {
  const factory LifeTimeModel({

    @JsonKey(name: 'total_dispatches') required int totalTrips,
    @JsonKey(name: 'total_miles') required int totalMiles,
    @JsonKey(name: 'total_stops') required int totalStops,
    @JsonKey(name: 'total_check_calls') required int totalCheckCalls,
    @JsonKey(name: 'shortest_trip_miles') required int shortestTripMiles,
    @JsonKey(name: 'longest_trip_miles') required int longestTripMiles,
  }) = _LifeTimeModel;

  factory LifeTimeModel.fromJson(Map<String, dynamic> json) =>
      _$LifeTimeModelFromJson(json);
}
