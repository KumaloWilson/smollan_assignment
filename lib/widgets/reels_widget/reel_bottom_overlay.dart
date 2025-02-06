import 'package:flutter/material.dart';
import 'package:smollan_assignment/widgets/custom_button/general_button.dart';

class ReelBottomOverlay extends StatelessWidget {
  const ReelBottomOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.7),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage('https://picsum.photos/100'),
                ),
                SizedBox(width: 8),
                Text(
                  'username',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                GeneralButton(text: 'Follow',)
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Video caption goes here... #reels #instagram',
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.music_note, size: 16),
                SizedBox(width: 4),
                Text(
                  'Original Audio',
                  style: TextStyle(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

