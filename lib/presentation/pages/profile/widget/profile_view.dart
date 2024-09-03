import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/user/user_bloc.dart';
import 'package:tms_driver/presentation/pages/profile/widget/user_profile.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state == const UserState.initial()) {
          context.go('/splash');
        }
      },
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(color: Theme.of(context).canvasColor),
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.only(bottom: 75),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  state.maybeWhen(
                    loaded: (user) => UserProfile(user: user),
                    orElse: () => const SizedBox.shrink(),
                  ),
                  state.when(
                    initial: () => Text(context.localizations.initializing),
                    loading: () => const SizedBox(
                      height: 300,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    loaded: (user) => Container(),
                    error: (message) =>
                        Text(context.localizations.errorMessage(message)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
