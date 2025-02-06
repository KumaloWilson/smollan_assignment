import 'package:flutter/material.dart';
import '../constants/instagram_colors.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Container(
            width: 96,
            height: 96,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: InstagramColors.instagramStoryGradient,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: InstagramColors.instagramWhite,
                ),
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Display Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: InstagramColors.instagramBlack,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Bio goes here...\nMultiple lines of text',
                  style: TextStyle(color: InstagramColors.instagramGray),
                ),
                SizedBox(height: 4),
                Text(
                  'www.example.com',
                  style: TextStyle(color: InstagramColors.instagramLink),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

