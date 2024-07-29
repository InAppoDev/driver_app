import 'package:flutter/material.dart';

class ChatImage extends StatelessWidget {
  const ChatImage({
    super.key,
    required this.mainImage,
    required this.images,
    this.borderRadius = 50,
    this.margin,
  });

  final String mainImage;
  final List<String> images;
  final double borderRadius;
  final double? margin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 45,
      child: Stack(
        children: [
          Container(
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
              child: Image.asset(
                mainImage,
                width: 40,
                height: 39,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 26,
            right: margin != null ? 6 : 8,
            child: Row(
              children: [
                ...images.map(
                  (image) => Container(
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
                      child: Image.asset(
                        image,
                        height: 16,
                        width: 16,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
