import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/models/personal_stats_model/personal_stats_model.dart';
import 'package:tms_driver/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final ApiDataSource apiDataSource;

  HomeRepositoryImpl({required this.apiDataSource});

  @override
  Future<PersonalStatsModel?> getPersonalStats() {
    return apiDataSource.getPersonalStats();
  }
}
