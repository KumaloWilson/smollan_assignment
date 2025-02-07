import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../models/profile_model.dart';
import '../../../widgets/profile_widgets/profile_about.dart';
import '../../../widgets/profile_widgets/profile_action_buttons.dart';
import '../../../widgets/profile_widgets/profile_header.dart';
import '../../../widgets/profile_widgets/profile_highlights.dart';
import '../../../widgets/profile_widgets/profile_posts_grid.dart';
import '../../../widgets/profile_widgets/profile_stats.dart';


class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          "userProfile.username",
        ),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.bell),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          ProfileHeader(),
          ProfileAbout(),
          ProfileActionButtons(showAddButton: true,),
          ProfileHighlights(),
          Divider(),
          ProfilePostsGrid(),
        ],
      ),
    );
  }
}

