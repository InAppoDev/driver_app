// ignore: depend_on_referenced_packages
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    on<LoginButtonPressed>(_loadingButton);
  }

  FutureOr<void> _loadingButton(event, emit) async {
    emit(const AuthState.loading());
    await Future.delayed(const Duration(seconds: 2));
    emit(const AuthState.authenticated());
  }
}
