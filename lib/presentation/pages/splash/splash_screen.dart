import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/splash/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc()..add(const SplashEvent.initialize()),
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

            await Future.delayed(const Duration(milliseconds: 800), () {});
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
                body: Center(
              child: AnimatedScale(
                scale: state.startAnimation ? 0.97 : 0.5,
                duration: const Duration(milliseconds: 500),
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
            ));
          },
        ),
      ),
    );
  }
}
