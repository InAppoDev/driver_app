import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/models/user/user_model.dart';
import 'package:tms_driver/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final ApiDataSource apiDataSource;

  UserRepositoryImpl({required this.apiDataSource});

  @override
  Future<UserModel> getUser() async {
    final userModel = await apiDataSource.getUser();
    return UserModel(
      firstName: userModel.firstName,
      lastName: userModel.lastName,
      photo: userModel.photo,
      phone: userModel.phone,
      email: userModel.email,
      address: userModel.address,
      city: userModel.city,
      stateCode: userModel.stateCode,
      zipCode: userModel.zipCode,
      emergencyPhone: userModel.emergencyPhone,
    );
  }
}
