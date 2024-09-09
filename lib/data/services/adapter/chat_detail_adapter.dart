import 'package:hive/hive.dart';
import 'package:tms_driver/data/models/chats/chat_detail/chat_detail_model.dart';
import 'package:tms_driver/data/models/chats/chat_participant/chat_participant.dart';
import 'package:tms_driver/data/models/chats/message/message_model.dart';

class ChatDetailModelAdapter extends TypeAdapter<ChatDetailModel> {
  @override
  final int typeId = 3;

  @override
  ChatDetailModel read(BinaryReader reader) {
    return ChatDetailModel(
      id: reader.readInt(),
      title: reader.readString(),
      subjectType: reader.readString(),
      subjectId: reader.readInt(),
      messages: reader.readList().cast<MessageModel>(),
      participants: reader.readList().cast<ChatParticipant>(),
    );
  }

  @override
  void write(BinaryWriter writer, ChatDetailModel obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.title);
    writer.writeString(obj.subjectType);
    writer.writeInt(obj.subjectId);
    writer.writeList(obj.messages);
    writer.writeList(obj.participants);
  }
}
