import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/data_source/auth_data_source.dart';
import 'package:tms_driver/data/models/user_model.dart';
import 'package:tms_driver/domain/repositories/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;
  final AuthDataSource authDataSource;

  UserBloc(this.userRepository, this.authDataSource)
      : super(const UserState.initial()) {
    on<UserEvent>(_userEvent);
  }

  FutureOr<void> _userEvent(event, emit) async {
    await event.map(
      started: (e) async {
        emit(const UserState.loading());
        try {
          final user = await userRepository.getUser();
          emit(UserState.loaded(user: user));
        } catch (e) {
          emit(UserState.error(message: e.toString()));
        }
      },
      logout: (e) async {
        await authDataSource.clearTokens();
        emit(const UserState.initial());
      },
    );
  }
}
