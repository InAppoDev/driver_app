import 'package:flutter/material.dart';
import 'package:tms_driver/data/models/chats/chat_participant/chat_participant.dart';

class ChatImage extends StatelessWidget {
  const ChatImage({
    super.key,
    required this.mainImage,
    required this.participants,
    this.borderRadius = 50,
    this.margin,
  });

  final String? mainImage;
  final List<ChatParticipant> participants;
  final double borderRadius;
  final double? margin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mainImage != null ? 60 : 0,
      height: 45,
      child: Stack(
        children: [
          mainImage != null
              ? Container(
                  margin: const EdgeInsets.only(left: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(borderRadius),
                    child: Image.network(
                      mainImage!,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const SizedBox(
                          width: 40,
                          height: 40,
                        );
                      },
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          Positioned(
            top: 26,
            right: margin != null ? 6 : 8,
            child: Row(
              children: [
                ...participants.map(
                  (participant) => participant.avatarUrl != null &&
                          participant.avatarUrl!.isNotEmpty
                      ? Container(
                          margin: EdgeInsets.symmetric(horizontal: margin ?? 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(borderRadius),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.network(
                              participant.avatarUrl!,
                              height: 16,
                              width: 16,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return const SizedBox(
                                  width: 16,
                                  height: 16,
                                );
                              },
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
