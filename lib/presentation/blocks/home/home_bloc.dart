import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/models/personal_stats_model/personal_stats_model.dart';
import 'package:tms_driver/domain/repositories/home_repository.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository = GetIt.instance<HomeRepository>();

  HomeBloc() : super(const HomeState.fetched(null)) {
    on<HomeEvent>(_onPersonalStatsFetch);
  }

  Future<void> _onPersonalStatsFetch(event, emit) async {
    await event.when(
      fetchStats: () async {
        emit(const HomeState.loading());
        final stats = await homeRepository.getPersonalStats();
        print('check homebloc stats - $stats');
        emit( HomeState.fetched(stats));
      },
    );
  }
}
