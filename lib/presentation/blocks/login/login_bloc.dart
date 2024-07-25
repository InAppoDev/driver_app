import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/data_source/auth_data_source.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ApiDataSource apiDataSource;
  final AuthDataSource authDataSource;

  LoginBloc({
    required this.apiDataSource,
    required this.authDataSource,
  }) : super(LoginState.initial()) {
    _initialize();
    on<LoginEvent>(_loginEvent);
  }

  void _initialize() async {
    try {
      final token = await authDataSource.getAuthToken();
      if (token != null) {
        emit(state.copyWith(status: LoginStatus.authenticated));
        print('User is already authenticated');
        return;
      }

      final message = await apiDataSource.ping();
      print('Server is working: $message');
      await apiDataSource.getConfig();
    } catch (e) {
      print('Server ERROR: $e');
    }
  }

  FutureOr<void> _loginEvent(event, emit) async {
    await event.when(
      loginButtonPressed: (username) async {
        emit(state.copyWith(status: LoginStatus.loading));
        try {
          final authCode =
              await apiDataSource.requestAuthCode(username, useEmail: true);
          emit(
            state.copyWith(
              status: LoginStatus.codeSent,
              username: username,
              authCode: authCode,
            ),
          );
        } catch (e) {
          emit(
            state.copyWith(
              status: LoginStatus.failure,
              errorMessage: e.toString(),
            ),
          );
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
          final authToken =
              await apiDataSource.verifyAuth(state.authCode, code);
          await authDataSource.saveAccessToken(authToken);
          emit(state.copyWith(status: LoginStatus.authenticated));
        } catch (e) {
          emit(state.copyWith(
              status: LoginStatus.failure, errorMessage: e.toString()));
        }
      },
    );
  }
}
