import 'package:flutter/material.dart';
import 'package:smollan_assignment/widgets/custom_button/general_button.dart';

class ReelBottomOverlay extends StatelessWidget {
  const ReelBottomOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 70,
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
                  radius: 25,
                  backgroundImage: NetworkImage('https://picsum.photos/100'),
                ),
                SizedBox(width: 8),
                Text(
                  'username',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                SizedBox(width: 16),
                GeneralButton(width: 90, height: 35, text: 'Follow',color: Colors.transparent, boxBorder: Border.all(color: Colors.white), )
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Video caption goes here... #reels #instagram',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.music_note, size: 16, color: Colors.white,),
                SizedBox(width: 4),
                Text(
                  'Original Audio',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

