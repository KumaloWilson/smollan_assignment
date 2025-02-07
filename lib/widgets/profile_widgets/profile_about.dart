import 'package:flutter/material.dart';

class ProfileAbout extends StatelessWidget {
  const ProfileAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bio goes here...\nMultiple lines of text',
            style: TextStyle(),
          ),
          SizedBox(height: 4),
          Text(
            'www.example.com',
            style: TextStyle(),
          ),
        ],
      ),
    );
  }
}
