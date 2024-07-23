import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/domain/repositories/user_repository.dart';
import 'package:tms_driver/presentation/blocks/bloc/user_bloc.dart';
import 'package:tms_driver/presentation/pages/profile/widget/profile_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final UserRepository userRepository = GetIt.instance<UserRepository>();
    return BlocProvider(
      create: (context) =>
          UserBloc(userRepository)..add(const UserEvent.started()),
      child: const ProfileView(),
    );
  }
}
