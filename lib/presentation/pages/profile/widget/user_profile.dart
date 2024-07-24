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
      padding: const EdgeInsets.all(8),
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
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(user.photo!),
              ),
            ),
          const SizedBox(height: 16),
          _buildUserInfo('Name', '${user.firstName} ${user.lastName}'),
          _buildUserInfo('Email', user.email),
          _buildUserInfo('Phone', user.phone),
          _buildUserInfo('Address', user.address),
          _buildUserInfo('City', user.city),
          _buildUserInfo('State Code', user.stateCode),
          _buildUserInfo('Zip Code', user.zipCode),
          _buildUserInfo('Emergency Phone', user.emergencyPhone ?? 'N/A'),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<UserBloc>().add(const UserEvent.logout());
              },
              child: const Text('Logout'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfo(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title: ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
