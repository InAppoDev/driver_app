import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/login/login_bloc.dart';
import 'package:tms_driver/presentation/pages/login/widget/login_view.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.palePink,
      body: BlocProvider(
        create: (context) =>
            LoginBloc()..add(const LoginEvent.checkPermissions()),
        child: LoginView(
          usernameController: _usernameController,
          codeController: _codeController,
        ),
      ),
    );
  }
}
