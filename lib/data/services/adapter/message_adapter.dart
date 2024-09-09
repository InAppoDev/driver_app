import 'package:hive/hive.dart';
import 'package:tms_driver/data/models/chats/chat_participant/chat_participant.dart';
import 'package:tms_driver/data/models/chats/message/message_model.dart';

class MessageAdapter extends TypeAdapter<MessageModel> {
  @override
  final int typeId = 4;

  @override
  MessageModel read(BinaryReader reader) {
    return MessageModel(
      id: reader.readInt(),
      sender: reader.read() as ChatParticipant,
      content: reader.readString(),
      sentAt: reader.readInt(),
      status: MessageStatus.values[reader.readInt()],
    );
  }

  @override
  void write(BinaryWriter writer, MessageModel obj) {
    writer.writeInt(obj.id);
    writer.write(obj.sender);
    writer.writeString(obj.content);
    writer.writeInt(obj.sentAt);
    writer.writeInt(obj.status.index);
  }
}
