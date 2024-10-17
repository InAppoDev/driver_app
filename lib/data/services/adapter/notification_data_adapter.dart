import 'package:hive/hive.dart';
import 'package:tms_driver/data/models/notification/notification_data/notification_data.dart';
import 'package:tms_driver/data/models/notification/notification_sender/notification_sender.dart';

class NotificationDataAdapter extends TypeAdapter<NotificationData> {
  @override
  final int typeId = 6;

  @override
  NotificationData read(BinaryReader reader) {
    return NotificationData(
      chatId: reader.read() as int?,
      messageId: reader.read() as int?,
      sender: reader.read() as NotificationSender?,
    );
  }

  @override
  void write(BinaryWriter writer, NotificationData obj) {
    writer.write(obj.chatId);
    writer.write(obj.messageId);
    writer.write(obj.sender);
  }
}
