import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/login/login_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_shape.dart';
import 'package:tms_driver/presentation/customs/custom_text_field.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
    required TextEditingController usernameController,
    required TextEditingController codeController,
  })  : _usernameController = usernameController,
        _codeController = codeController;

  final TextEditingController _usernameController;
  final TextEditingController _codeController;

  @override
  Widget build(BuildContext context) {
    _usernameController.text = '9993335111';
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status == LoginStatus.authenticated) {
          context.go('/main');
        }
        if (state.status == LoginStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage ?? 'An error occurred')),
          );
        }
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
              'Enter your Email or Phone number to login to your account',
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
            BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return Column(
                  children: [
                    if (state.status == LoginStatus.loading)
                      const CircularProgressIndicator(),
                    if (state.status != LoginStatus.codeSent)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45),
                        child: SizedBox(
                          height: 48,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              context.read<LoginBloc>().add(
                                    LoginEvent.loginButtonPressed(
                                      username: _usernameController.text,
                                    ),
                                  );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(8), // Border radius
                              ),
                            ),
                            child: const Text(
                              'Request Code',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.mainWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (state.status == LoginStatus.codeSent)
                      Column(
                        children: [
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: CustomTextField(
                              controller: _codeController,
                              hintText: 'Enter Code',
                            ),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 45),
                            child: SizedBox(
                              height: 48,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  context.read<LoginBloc>().add(
                                        LoginEvent.verifyCode(
                                          code: _codeController.text,
                                        ),
                                      );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.orange,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Border radius
                                  ),
                                ),
                                child: const Text(
                                  'Verify Code',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.mainWhite,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
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
