import 'package:tms_driver/data/models/personal_stats_model/personal_stats_model.dart';

abstract class HomeRepository {
  Future<PersonalStatsModel?> getPersonalStats();
}
