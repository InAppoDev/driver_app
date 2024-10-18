import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tms_driver/domain/repositories/auth_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepo = GetIt.instance<AuthRepository>();

  LoginBloc() : super(LoginState.initial()) {
    on<LoginEvent>(_loginEvent);
  }

  FutureOr<void> _loginEvent(event, emit) async {
    await event.when(
      onboardingCompleted: () {
        emit(state.copyWith(status: LoginStatus.initial));
      },
      checkPermissions: () async {
        PermissionStatus status = await Permission.locationWhenInUse.request();
        PermissionStatus backgroundStatus =
            await Permission.locationAlways.request();
        if (status.isGranted && backgroundStatus.isGranted) {
          emit(state.copyWith(status: LoginStatus.initial));
        } else {
          emit(state.copyWith(status: LoginStatus.showOnboarding));
        }
      },
      loginButtonPressed: (username) async {
        emit(state.copyWith(status: LoginStatus.loading));
        try {
          final authCode =
              await authRepo.requestAuthCode(username, useEmail: true);
          emit(state.copyWith(
            status: LoginStatus.codeSent,
            username: username,
            authCode: authCode,
          ));
        } catch (e) {
          emit(state.copyWith(
            status: LoginStatus.failure,
            errorMessage: e.toString(),
          ));
        }
      },
      codeRequested: () {
        emit(state.copyWith(status: LoginStatus.codeSent));
      },
      codeChanged: (code) {
        emit(state.copyWith(code: code));
      },
      verifyCode: (code) async {
        emit(state.copyWith(status: LoginStatus.loading));
        try {
          await authRepo.verifyAuth(state.authCode, code);
          emit(state.copyWith(status: LoginStatus.authenticated));
        } catch (e) {
          emit(state.copyWith(
              status: LoginStatus.failure, errorMessage: e.toString()));
        }
      },
    );
  }
}
