import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/data_source/auth_data_source.dart';
import 'package:tms_driver/domain/repositories/user_repository.dart';
import 'package:tms_driver/presentation/blocks/user/user_bloc.dart';
import 'package:tms_driver/presentation/pages/profile/widget/profile_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final UserRepository userRepository = GetIt.instance<UserRepository>();
    final AuthDataSource authDataSource = GetIt.instance<AuthDataSource>();
    return BlocProvider(
      create: (context) => UserBloc(userRepository, authDataSource)
        ..add(const UserEvent.started()),
      child: const ProfileView(),
    );
  }
}
