import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/auth/auth_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
    required TextEditingController usernameController,
  }) : _usernameController = usernameController;

  final TextEditingController _usernameController;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: () {
            context.go('/main');
          },
          orElse: () {},
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 20),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const CircularProgressIndicator(),
                  orElse: () => ElevatedButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(
                            AuthEvent.loginButtonPressed(
                              username: _usernameController.text,
                            ),
                          );
                    },
                    child: const Text('Login'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
