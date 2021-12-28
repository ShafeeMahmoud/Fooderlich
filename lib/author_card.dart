import 'package:flutter/material.dart';
import 'package:fooderlich/circle_avatar.dart';
import 'package:fooderlich/fooderlich_theme.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  ),
                ],
              ),
            ],
          ),
        ],
        // TODO: Add icon button
      ),
    );
  }
}
