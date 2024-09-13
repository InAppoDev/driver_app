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
        if (state.status == UserStatus.initial) {
          context.go('/splash');
        }
      },
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state.status == UserStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.status == UserStatus.loaded) {
            return SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(color: Theme.of(context).canvasColor),
                child: Column(
                  children: [
                    UserProfile(user: state.user!),
                    const SizedBox(height: 75),
                  ],
                ),
              ),
            );
          }
          if (state.status == UserStatus.error) {
            Text(context.localizations.errorMessage(state.errorMessage!));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
