import 'package:hive/hive.dart';
import 'package:tms_driver/data/models/chats/chat_participant/chat_participant.dart';

class ChatParticipantAdapter extends TypeAdapter<ChatParticipant> {
  @override
  final int typeId = 2;

  @override
  ChatParticipant read(BinaryReader reader) {
    return ChatParticipant(
      senderId: reader.readInt(),
      senderType: reader.readString(),
      name: reader.readString(),
      avatarUrl: reader.read() as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ChatParticipant obj) {
    writer.writeInt(obj.senderId);
    writer.writeString(obj.senderType);
    writer.writeString(obj.name);
    writer.write(obj.avatarUrl);
  }
}
