import 'package:flutter/material.dart';

import '../../../widgets/profile_widgets/profile_action_buttons.dart';
import '../../../widgets/profile_widgets/profile_header.dart';
import '../../../widgets/profile_widgets/profile_highlights.dart';
import '../../../widgets/profile_widgets/profile_posts_grid.dart';
import '../../../widgets/profile_widgets/profile_stats.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'username',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_outlined,),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu,),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          ProfileHeader(),
          ProfileStats(),
          ProfileActionButtons(),
          ProfileHighlights(),
          Divider(),
          ProfilePostsGrid(),
        ],
      ),
    );
  }
}

