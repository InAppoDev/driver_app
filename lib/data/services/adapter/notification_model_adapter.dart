import 'package:hive/hive.dart';
import 'package:tms_driver/data/models/notification/notification_data/notification_data.dart';
import 'package:tms_driver/data/models/notification/notification_model/notification_model.dart';

class NotificationModelAdapter extends TypeAdapter<NotificationModel> {
  @override
  final int typeId = 5;
  @override
  NotificationModel read(BinaryReader reader) {
    return NotificationModel(
      id: reader.readInt(),
      type: reader.readString(),
      title: reader.readString(),
      description: reader.readString(),
      eventAt: reader.readInt(),
      entityType: reader.readString(),
      entityId: reader.readInt(),
      data: reader.read() as NotificationData?,
    );
  }

  @override
  void write(BinaryWriter writer, NotificationModel obj) {
    writer.writeInt(obj.id ?? 0);
    writer.writeString(obj.type ?? '');
    writer.writeString(obj.title ?? '');
    writer.writeString(obj.description ?? '');
    writer.writeInt(obj.eventAt ?? 0);
    writer.writeString(obj.entityType ?? '');
    writer.writeInt(obj.entityId ?? 0);
    writer.write(obj.data);
  }
}
