import 'package:flutter/material.dart';

class PostLikes extends StatelessWidget {
  final int likes;

  const PostLikes({Key? key, required this.likes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        '$likes likes',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

