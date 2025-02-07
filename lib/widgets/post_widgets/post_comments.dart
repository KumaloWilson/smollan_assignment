import 'package:flutter/material.dart';

class PostComments extends StatelessWidget {
  final String postText;

  const PostComments({Key? key, required this.postText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Comments',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(postText),
          // In a real app, you'd display a list of comments here
        ],
      ),
    );
  }
}

