import 'package:flutter/material.dart';

class PostActions extends StatelessWidget {
  final VoidCallback onLike;
  final VoidCallback onComment;
  final VoidCallback onShare;

  const PostActions({
    Key? key,
    required this.onLike,
    required this.onComment,
    required this.onShare,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.favorite_border),
          onPressed: onLike,
        ),
        IconButton(
          icon: Icon(Icons.chat_bubble_outline),
          onPressed: onComment,
        ),
        IconButton(
          icon: Icon(Icons.send),
          onPressed: onShare,
        ),
        Spacer(),
        IconButton(
          icon: Icon(Icons.bookmark_border),
          onPressed: () {/* Implement bookmark action */},
        ),
      ],
    );
  }
}

