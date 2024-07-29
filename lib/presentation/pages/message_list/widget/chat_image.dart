import 'package:flutter/material.dart';

class ChatImage extends StatelessWidget {
  const ChatImage({
    super.key,
    required this.mainImage,
    required this.images,
  });

  final String mainImage;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            mainImage,
            height: 38,
            width: 40,
          ),
        ),
        Positioned(
          top: 22,
          child: Row(
            children: [
              ...images.map(
                    (image) => ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    image,
                    height: 15,
                    width: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
