import 'package:flutter/material.dart';
import 'package:fooderlich/circle_avatar.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard(
      {Key? key,
      required this.title,
      required this.authorName,
      this.imageProvider})
      : super(key: key);

  final String title;
  final String authorName;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        // TODO: Add Alignment
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(width: 8),

            ],
          ),
        ],
      ),
    );
  }
}
