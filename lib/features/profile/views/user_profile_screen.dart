import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../providers/profile_provider.dart';
import '../../../widgets/profile_widgets/profile_about.dart';
import '../../../widgets/profile_widgets/profile_action_buttons.dart';
import '../../../widgets/profile_widgets/profile_header.dart';
import '../../../widgets/profile_widgets/profile_highlights.dart';
import '../../../widgets/profile_widgets/profile_posts_grid.dart';
class UserProfileScreen extends StatefulWidget {
  final String username;

  const UserProfileScreen({super.key, required this.username});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ProfileProvider>(context, listen: false).fetchProfile();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
        title: Text(widget.username),
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
      body: Consumer<ProfileProvider>(
        builder: (context, profileProvider, child) {
          if (profileProvider.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (profileProvider.error != null) {
            return Center(child: Text('Error: ${profileProvider.error}'));
          } else if (profileProvider.profile == null) {
            return Center(child: Text('No profile data available'));
          } else {
            final profile = profileProvider.profile!;
            return ListView(
              children: [
                ProfileHeader(
                  profilePic: profile.profilePic,
                  posts: profile.posts,
                  followers: profile.followers,
                  following: profile.following,
                ),
                ProfileAbout(
                  username: profile.username,
                  designation: profile.bio.designation,
                  description: profile.bio.description,
                  website: profile.bio.website,
                ),
                ProfileActionButtons(showAddButton: false),
                ProfileHighlights(highlights: profile.highlights),
                ProfilePostsGrid(
                  posts: profile.gallery,
                  onPostTap: (index) {
                    // if (index == 0) {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => PostScreen()),
                    //   );
                    // }
                  },
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

