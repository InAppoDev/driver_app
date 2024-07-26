import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/splash/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => SplashBloc(),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, listenerState) async {
          if (listenerState.status == SplashStatus.authenticated) {
            Future.delayed(const Duration(milliseconds: 1500), () {
              context.go('/main');
            });
          }
          if (listenerState.status == SplashStatus.unauthenticated) {
            await Future.delayed(const Duration(milliseconds: 2200), () {});
            if (context.mounted) {
              context
                  .read<SplashBloc>()
                  .add(const SplashEvent.startAnimation(startAnimation: true));
            }

            await Future.delayed(const Duration(milliseconds: 1200), () {});
            if (context.mounted) {
              context.go('/login');
            }
          }
          if (listenerState.status == SplashStatus.failure && context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content:
                      Text(listenerState.errorMessage ?? 'An error occurred')),
            );
          }
        },
        child: BlocBuilder<SplashBloc, SplashState>(
          builder: (context, state) {
            return Scaffold(
                body: Stack(
              children: [
                AnimatedPositioned(
                  top: state.startAnimation
                      ? 0
                      : height / 2 - 115,
                  left: 0,
                  right: 0,
                  duration: const Duration(milliseconds: 700),
                  child: AnimatedScale(
                    scale: state.startAnimation ? 1 : 0.6,
                    duration: const Duration(milliseconds: 1000),
                    child: Container(
                      height: height * 0.266,
                      width: double.infinity,
                      color: theme.scaffoldBackgroundColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                          ),
                          Text(
                            'DRIVER APP',
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
                ),
              ],
            ));
          },
        ),
      ),
    );
  }
}
