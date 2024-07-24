import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/bloc/auth_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/customs/custom_shape.dart';
import 'package:tms_driver/presentation/customs/custom_text_field.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';

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
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // SvgPicture.asset('assets/images/logo.svg'),
            ClipPath(
              clipper: CustomShape(),
              child: Container(
                height: 230,
                width: double.infinity,
                color: AppColors.mainWhite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                    ),
                    const Text(
                      'DRIVER APP',
                      style: TextStyle(
                        letterSpacing: 7,
                        fontWeight: FontWeight.w600,
                        color: AppColors.orange,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 42),
            const Text(
              'Get Started',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            const Text(
              'Enter your Phone number to login an account',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.textGray,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: CustomTextField(controller: _usernameController),
            ),
            const SizedBox(height: 30),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const CircularProgressIndicator(),
                  orElse: () => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: CustomButton(
                      label: 'Login',
                      onPressed: () {
                        context.read<AuthBloc>().add(
                              AuthEvent.loginButtonPressed(
                                username: _usernameController.text,
                              ),
                            );
                      },
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 45),
              child: Text(
                'Your data is protected and used solely for app authentication. We respect your privacy and security.',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}