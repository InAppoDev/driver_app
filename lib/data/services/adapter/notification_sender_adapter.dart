import 'package:hive/hive.dart';
import 'package:tms_driver/data/models/notification/notification_sender/notification_sender.dart';

class NotificationSenderAdapter extends TypeAdapter<NotificationSender> {
  @override
  final int typeId = 7;

  @override
  NotificationSender read(BinaryReader reader) {
    return NotificationSender(
      senderId: reader.read() as int?,
      senderType: reader.readString(),
      name: reader.readString(),
      avatarUrl: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, NotificationSender obj) {
    writer.write(obj.senderId);
    writer.writeString(obj.senderType ?? '');
    writer.writeString(obj.name ?? '');
    writer.writeString(obj.avatarUrl ?? '');
  }
}
