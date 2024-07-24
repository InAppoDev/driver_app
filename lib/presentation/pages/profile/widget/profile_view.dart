import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/user/user_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(color: Theme.of(context).canvasColor),
          child: Center(
            child: state.when(
              initial: () => const Text('Initializing...'),
              loading: () => const CircularProgressIndicator(),
              loaded: (user) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Name: ${user.firstName} ${user.lastName}'),
                  Text('Email: ${user.email}'),
                  // додайте більше полів, як необхідно
                ],
              ),
              error: (message) => Text('Error: $message'),
            ),
          ),
        );
      },
    );
  }
}
