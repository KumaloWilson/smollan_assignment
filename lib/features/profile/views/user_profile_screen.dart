import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:smollan_assignment/core/constants/color_constants.dart';

import '../../../providers/profile_provider.dart';
import '../../../widgets/error_widgets/error_widget.dart';
import '../../../widgets/profile_widgets/profile_about.dart';
import '../../../widgets/profile_widgets/profile_action_buttons.dart';
import '../../../widgets/profile_widgets/profile_header.dart';
import '../../../widgets/profile_widgets/profile_highlights.dart';
import '../../../widgets/profile_widgets/profile_posts_grid.dart';
import '../../../widgets/profile_widgets/profile_reels_grid.dart';
import '../../../widgets/profile_widgets/profile_tagged_grid.dart';


class UserProfileScreen extends StatefulWidget {
  final String username;

  const UserProfileScreen({super.key, required this.username});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ProfileProvider>(context, listen: false).fetchProfile();
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
            return ErrorScreen(
              message: profileProvider.error!,
              onRetry: profileProvider.fetchProfile,
            );
          } else if (profileProvider.profile == null) {
            return ErrorScreen(
              message: 'No profile data available',
              onRetry: profileProvider.fetchProfile,
            );
          } else {
            final profile = profileProvider.profile!;
            return NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverToBoxAdapter(
                    child: Column(
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
                      ],
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _SliverAppBarDelegate(
                      TabBar(
                        controller: _tabController,
                        tabs: [
                          Tab(icon: Icon(Icons.grid_on)),
                          Tab(icon: Icon(Icons.video_library)),
                          Tab(icon: Icon(Icons.person_pin_outlined)),
                        ],
                        indicatorColor: theme.primaryColor,
                        unselectedLabelColor: theme.unselectedWidgetColor,
                        labelColor: Palette.instagramWhite,
                      ),
                    ),
                  ),
                ];
              },
              body: TabBarView(
                controller: _tabController,
                children: [
                  ProfilePostsGrid(
                    posts: profile.gallery,
                    onPostTap: (index) {

                    },
                  ),
                  ProfileReelsGrid(
                    reels: profile.gallery,
                    onReelTap: (index) {

                    },
                  ),
                  ProfileTaggedGrid(
                    taggedPosts: profile.gallery,
                    onTaggedPostTap: (index) {

                    },
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

