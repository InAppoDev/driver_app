import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState.initial()) {
    on<_PageChanged>((event, emit) {
      emit(state.copyWith(selectedPage: event.page));
    });
    on<_HideShowNavBar>((event, emit) {
      emit(state.copyWith(showNavBar: event.hideShowNavBar));
    });
  }
}
