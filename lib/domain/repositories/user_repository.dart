import 'package:tms_driver/data/models/user/user_model.dart';

abstract class UserRepository {
  Future<UserModel> getUser();
}
