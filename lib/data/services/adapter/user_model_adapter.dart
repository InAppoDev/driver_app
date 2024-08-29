import 'package:hive/hive.dart';
import 'package:tms_driver/data/models/user/user_model.dart';

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 0;

  @override
  UserModel read(BinaryReader reader) {
    return UserModel(
      firstName: reader.readString(),
      lastName: reader.readString(),
      photo: reader.readString(),
      phone: reader.readString(),
      email: reader.readString(),
      address: reader.readString(),
      city: reader.readString(),
      stateCode: reader.readString(),
      zipCode: reader.readString(),
      emergencyPhone: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer.writeString(obj.firstName);
    writer.writeString(obj.lastName);
    writer.writeString(obj.photo ?? '');
    writer.writeString(obj.phone);
    writer.writeString(obj.email);
    writer.writeString(obj.address);
    writer.writeString(obj.city);
    writer.writeString(obj.stateCode);
    writer.writeString(obj.zipCode);
    writer.writeString(obj.emergencyPhone ?? '');
  }
}
