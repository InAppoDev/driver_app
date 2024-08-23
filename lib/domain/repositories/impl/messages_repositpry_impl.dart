import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/models/chats/chat/chat_model.dart';
import 'package:tms_driver/data/models/chats/chat_detail/chat_detail_model.dart';
import 'package:tms_driver/domain/repositories/messages_repository.dart';

class MessagesRepositoryImpl implements MessagesRepository {
  final ApiDataSource apiDataSource;

  MessagesRepositoryImpl({required this.apiDataSource});

  @override
  Future<ChatDetailModel> getChatDetails(int chatId) async {
    return await apiDataSource.getChatDetails(chatId);
  }

  @override
  Future<void> sendMessage(int chatId, String content,
      [List<String>? documentUploadIds]) async {
    await apiDataSource.sendMessage(chatId, content,
        documentUploadIds: documentUploadIds);
  }

  @override
  Future<List<ChatModel>> getChats() async {
    return await apiDataSource.getChats();
  }
}
