import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/data/models/user/user_model.dart';
import 'package:tms_driver/presentation/blocks/user/user_bloc.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class UserProfile extends StatelessWidget {
  final UserModel user;

  const UserProfile({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const localPhotoPath =
        '/data/user/0/com.example.tms_driver/app_flutter/user_photo.jpg';
    final localPhotoFile = File(localPhotoPath);
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (user.photo != null)
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey[200],
                    child: Image.network(
                      user.photo!,
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.file(
                          localPhotoFile,
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.person,
                              size: 50,
                              color: Colors.grey[400],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '${user.firstName} ${user.lastName}',
                        style: theme.textTheme.headlineSmall!
                            .copyWith(fontSize: 18),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        user.email,
                        style:
                            theme.textTheme.labelSmall!.copyWith(fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              context
                                  .read<UserBloc>()
                                  .add(const UserEvent.logout());
                            },
                            child: Text(
                              context.localizations.logout,
                              style: theme.textTheme.titleLarge!.copyWith(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          Text(context.localizations.accountInformation,
              style: theme.textTheme.headlineSmall!.copyWith(fontSize: 18)),
          const SizedBox(height: 16),
          _buildUserInfo(context,
              title: context.localizations.phone, value: user.phone),
          _buildUserInfo(context,
              title: context.localizations.address, value: user.address),
          _buildUserInfo(context,
              title: context.localizations.city, value: user.city),
          _buildUserInfo(context,
              title: context.localizations.stateCode, value: user.stateCode),
          _buildUserInfo(context,
              title: context.localizations.stateCode, value: user.stateCode),
          _buildUserInfo(context,
              title: context.localizations.zipCode, value: user.zipCode),
          _buildUserInfo(context,
              title: context.localizations.zipCode, value: user.zipCode),
          _buildUserInfo(context,
              title: 'Emergency Phone', value: user.emergencyPhone ?? 'N/A'),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildUserInfo(BuildContext context, {String? title, String? value}) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Text(
              '$title: ',
              style: theme.textTheme.labelSmall,
            ),
          if (value != null)
            Text(
              value,
              style: theme.textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.w400,
                color: Theme.of(context).shadowColor,
              ),
            ),
        ],
      ),
    );
  }
}
