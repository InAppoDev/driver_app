import 'package:hive/hive.dart';
import 'package:tms_driver/data/models/chats/chat/chat_model.dart';
import 'package:tms_driver/data/models/chats/chat_participant/chat_participant.dart';
import 'package:tms_driver/data/models/chats/last_message/last_message_model.dart';

class ChatModelAdapter extends TypeAdapter<ChatModel> {
  @override
  final int typeId = 1;

  @override
  ChatModel read(BinaryReader reader) {
    return ChatModel(
      id: reader.readInt(),
      title: reader.readString(),
      photoUrl: reader.readBool() ? reader.readString() : null,
      lastMessage: reader.readBool()
          ? LastMessageModel(previewText: reader.readString())
          : null,
      unreadMessagesCount: reader.readInt(),
      orderWeight: reader.readInt(),
      lastUpdatedAt: reader.readInt(),
      participants: reader.readList().cast<ChatParticipant>(),
    );
  }

  @override
  void write(BinaryWriter writer, ChatModel obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.title);
    if (obj.photoUrl != null) {
      writer.writeBool(true);
      writer.writeString(obj.photoUrl!);
    } else {
      writer.writeBool(false);
    }
    if (obj.lastMessage != null) {
      writer.writeBool(true);
      writer.writeString(obj.lastMessage!.previewText);
    } else {
      writer.writeBool(false);
    }
    writer.writeInt(obj.unreadMessagesCount ?? 0);
    writer.writeInt(obj.orderWeight ?? 0);
    writer.writeInt(obj.lastUpdatedAt ?? 0);
    writer.writeList(obj.participants);
  }
}
