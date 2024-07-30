import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/login/login_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_shape.dart';
import 'package:tms_driver/presentation/customs/custom_text_field.dart';
import 'package:tms_driver/presentation/pages/onboarding/onboarding_screen.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

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
    final theme = Theme.of(context);
    // _usernameController.text = '9993335111'; // Val
    _usernameController.text = '9991451655'; // Max
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
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state.status == LoginStatus.showOnboarding) {
            return OnboardingScreen(
              onCompleted: () {
                context
                    .read<LoginBloc>()
                    .add(const LoginEvent.onboardingCompleted());
              },
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                children: [
                  // SvgPicture.asset('assets/images/logo.svg'),
                  ClipPath(
                    clipper: CustomShape(),
                    child: Container(
                      height: 230,
                      width: double.infinity,
                      color: theme.scaffoldBackgroundColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                          ),
                          Text(
                            context.localizations.driveApp,
                            style: TextStyle(
                              letterSpacing: 7,
                              fontWeight: FontWeight.w600,
                              color: theme.cardColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 42),
                  Text(
                    context.localizations.getStarted,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    context.localizations.enterYourPhoneNumberToLoginAnAccount,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: theme.hintColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: CustomTextField(
                      controller: _usernameController,
                      prefixIcon: Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 21, top: 12),
                        child: Text(
                          '+1',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: theme.hintColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Column(
                          children: [
                            if (state.status == LoginStatus.loading)
                              const CircularProgressIndicator(),
                            if (state.status == LoginStatus.initial ||
                                state.status == LoginStatus.failure)
                              SizedBox(
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
                                    backgroundColor: theme.cardColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    context.localizations.requestCode,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: theme.scaffoldBackgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                            if ((state.status != LoginStatus.authenticated &&
                                    state.status == LoginStatus.codeSent) ||
                                state.status == LoginStatus.authenticated &&
                                    state.status == LoginStatus.loading)
                              Column(
                                children: [
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 32),
                                    child: CustomTextField(
                                      controller: _codeController,
                                      hintText: context.localizations.enterCode,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  if (state.status != LoginStatus.loading)
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 45),
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
                                            backgroundColor: theme.cardColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Text(
                                            context.localizations.verifyCode,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  theme.scaffoldBackgroundColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Text(
                      context.localizations.yourDataIsProtected,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
