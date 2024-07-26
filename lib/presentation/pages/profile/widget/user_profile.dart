import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/data/models/user_model.dart';
import 'package:tms_driver/presentation/blocks/user/user_bloc.dart';

class UserProfile extends StatelessWidget {
  final UserModel user;

  const UserProfile({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
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
                    child: user.photo != null
                        ? Image.network(
                            user.photo!,
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                          )
                        : Icon(
                            Icons.person,
                            size: 50,
                            color: Colors.grey[400],
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
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        user.email,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
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
                              'Logout',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
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
          const Text(
            'Account Information',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 16),
          _buildUserInfo(context, title: 'Phone', value: user.phone),
          _buildUserInfo(context, title: 'Address', value: user.address),
          _buildUserInfo(context, title: 'City', value: user.city),
          _buildUserInfo(context, title: 'State Code', value: user.stateCode),
          _buildUserInfo(context, title: 'State Code', value: user.stateCode),
          _buildUserInfo(context, title: 'Zip Code', value: user.zipCode),
          _buildUserInfo(context, title: 'Zip Code', value: user.zipCode),
          _buildUserInfo(context,
              title: 'Emergency Phone', value: user.emergencyPhone ?? 'N/A'),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildUserInfo(BuildContext context, {String? title, String? value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Text(
              '$title: ',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          if (value != null)
            Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Theme.of(context).shadowColor,
              ),
            ),
        ],
      ),
    );
  }
}
