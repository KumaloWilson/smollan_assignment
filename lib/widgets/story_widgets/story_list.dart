import 'package:flutter/material.dart';
import 'package:smollan_assignment/widgets/story_widgets/story_circle.dart';

import '../../models/story_model.dart';

class StoryList extends StatelessWidget {
  final List<Story> stories;
  const StoryList({super.key, required this.stories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) {
          final story = stories[index];
          return StoryCircle(
            story: story,
          );
        },
      ),
    );
  }
}

