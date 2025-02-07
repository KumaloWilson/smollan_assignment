import 'package:flutter/material.dart';
import 'package:smollan_assignment/core/constants/color_constants.dart';

import '../../models/story_model.dart';

class StoryCircle extends StatelessWidget {
  final Story story;
  const StoryCircle({super.key, required this.story});

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
              gradient: LinearGradient(
                colors: Palette.instagramStoryGradient,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.scaffoldBackgroundColor,
                ),
                padding: EdgeInsets.all(4),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(story.profilePic),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 4),
          Text(story.username, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

