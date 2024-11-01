import 'package:tms_driver/data/models/chats/chat/chat_model.dart';
import 'package:tms_driver/data/models/chats/chat_detail/chat_detail_model.dart';

abstract class MessagesRepository {
  Future<ChatDetailModel> getChatDetails(int chatId);

  Future<List<ChatModel>> getChats();

  Future<void> sendMessage(
    int chatId,
    String content, [
    List<String>? documentUploadIds,
  ]);

  Future<String?> checkUnreadMessage(
    String chatId,
    int messageId,
  );
}
