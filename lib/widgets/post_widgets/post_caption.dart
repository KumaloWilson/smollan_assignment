import 'package:flutter/material.dart';

class PostCaption extends StatelessWidget {
  final String username;
  final String caption;

  const PostCaption({
    Key? key,
    required this.username,
    required this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: [
            TextSpan(
              text: '$username ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: caption),
          ],
        ),
      ),
    );
  }
}

