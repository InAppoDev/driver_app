import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/models/user/user_model.dart';
import 'package:tms_driver/domain/repositories/auth_repository.dart';
import 'package:tms_driver/domain/repositories/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepo = GetIt.instance<UserRepository>();
  final AuthRepository authRepo = GetIt.instance<AuthRepository>();

  UserBloc() : super(UserState.initial()) {
    on<Started>(_userEvent);
    on<Logout>(_logOutEvent);
  }

  FutureOr<void> _userEvent(event, emit) async {
    emit(state.copyWith(status: UserStatus.loading));
    try {
      final UserModel user = await userRepo.getUser();
      emit(state.copyWith(status: UserStatus.loaded, user: user));
    } catch (e) {
      emit(
          state.copyWith(status: UserStatus.error, errorMessage: e.toString()));
    }
  }

  FutureOr<void> _logOutEvent(event, emit) async {
    await authRepo.clearTokens();
    emit(UserState.initial());
  }
}
