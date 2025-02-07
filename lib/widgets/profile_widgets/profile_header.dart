import 'package:flutter/material.dart';
import 'package:smollan_assignment/core/constants/color_constants.dart';
import 'package:smollan_assignment/widgets/profile_widgets/profile_stats.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
                colors: Palette.instagramStoryGradient,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.scaffoldBackgroundColor,
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
            child: ProfileStats()
          ),
        ],
      ),
    );
  }
}

