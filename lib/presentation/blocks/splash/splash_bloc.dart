import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/domain/repositories/auth_repository.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final AuthRepository authRepo = GetIt.instance<AuthRepository>();

  SplashBloc() : super(SplashState.initial()) {
    _initialize();
    on<SplashEvent>(_startAnimation);
  }

  Future<void> _initialize() async {
    try {
      final token = await authRepo.getAuthToken();
      if (token != null) {
        emit(state.copyWith(status: SplashStatus.authenticated));
        if (kDebugMode) {
          print('User is already authenticated');
        }
        return;
      } else {
        emit(state.copyWith(status: SplashStatus.unauthenticated));
      }

      final message = await authRepo.ping();
      if (kDebugMode) {
        print('Server is working: $message');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Server ERROR: $e');
      }
    }
  }

  void _startAnimation(SplashEvent event, Emitter<SplashState> emit) {
    emit(state.copyWith(startAnimation: event.startAnimation));
  }
}
