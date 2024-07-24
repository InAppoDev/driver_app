import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/data_source/auth_data_source.dart';
import 'package:tms_driver/presentation/blocks/login/login_bloc.dart';
import 'package:tms_driver/presentation/pages/login/widget/login_view.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ApiDataSource apiDataSource = GetIt.instance<ApiDataSource>();
    final AuthDataSource authDataSource = GetIt.instance<AuthDataSource>();
    return Scaffold(
      backgroundColor: AppColors.palePink,
      body: BlocProvider(
        create: (context) => LoginBloc(
          apiDataSource: apiDataSource,
          authDataSource: authDataSource,
        ),
        child: SafeArea(
          child: LoginView(
            usernameController: _usernameController,
            codeController: _codeController,
          ),
        ),
      ),
    );
  }
}
