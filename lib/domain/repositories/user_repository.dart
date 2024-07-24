import 'package:tms_driver/data/models/user_model.dart';

abstract class UserRepository {
  Future<UserModel> getUser();
}
