import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/bloc/auth_bloc.dart';
import 'package:tms_driver/presentation/pages/login/widget/login_view.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: BlocProvider(
        create: (context) => AuthBloc(),
        child: LoginView(usernameController: _usernameController),
      ),
    );
  }
}
