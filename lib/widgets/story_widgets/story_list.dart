import 'package:flutter/material.dart';
import 'package:smollan_assignment/core/constants/color_constants.dart';
import 'package:smollan_assignment/widgets/story_widgets/story_circle.dart';
import 'package:smollan_assignment/widgets/story_widgets/your_story.dart';
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
        itemCount: stories.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Badge(
                backgroundColor: Palette.instagramBlue,
                alignment: Alignment.lerp(
                    Alignment.bottomLeft,
                    Alignment.centerRight,
                    0.8
                ),
                label: Text(
                  '+',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: YourStoryCircle()
            );
          }
          // For all other indices, show the story (subtract 1 from index to account for the add button)
          final story = stories[index - 1];
          return StoryCircle(
            story: story,
          );
        },
      ),
    );
  }
}