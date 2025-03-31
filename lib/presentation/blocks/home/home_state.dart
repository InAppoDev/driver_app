part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.fetched(PersonalStatsModel? personalStats) = Fetched;
  const factory HomeState.loading() = Loading;
}
