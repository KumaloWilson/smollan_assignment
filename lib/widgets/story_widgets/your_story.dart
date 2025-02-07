import 'package:flutter/material.dart';
import 'package:smollan_assignment/core/constants/color_constants.dart';

class YourStoryCircle extends StatelessWidget {

  const YourStoryCircle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Palette.instagramLightGray
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.scaffoldBackgroundColor,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 4),
          Text('Your Story', style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

