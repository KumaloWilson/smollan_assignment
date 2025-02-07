import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:smollan_assignment/core/constants/image_asset_constants.dart';
import 'package:smollan_assignment/widgets/story_widgets/story_list.dart';
import '../../../providers/feed_provider.dart';
import '../../../providers/theme_provider.dart';
import '../../../widgets/error_widgets/error_widget.dart';
import '../../../widgets/post_widgets/post_list.dart';
import '../../../widgets/skeleton_widgets/post_skeleton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<FeedProvider>(context, listen: false).fetchFeed();
    });
  }



  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        title: Image.asset(
          themeProvider.themeMode == ThemeMode.dark
              ? LocalImageConstants.secLogoDark
              : themeProvider.themeMode == ThemeMode.light
              ? LocalImageConstants.secLogoLight
              : MediaQuery.of(context).platformBrightness == Brightness.dark
              ? LocalImageConstants.secLogoDark
              : LocalImageConstants.secLogoLight,
          height: 50,
          width: 120,
        ),
        actions: [
          Badge(
            backgroundColor: Colors.red,
            alignment: Alignment.lerp(
                Alignment.centerRight,
                Alignment.topCenter,
                0.5
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border)
            ),
          ),
          Badge(
            backgroundColor: Colors.red,
            alignment: Alignment.lerp(
                Alignment.centerRight,
                Alignment.topCenter,
                0.5
            ),
            label: Text(
               '4',
              style: theme.textTheme.bodySmall,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.facebookMessenger),
            ),
          ),
        ],
      ),
      body: Consumer<FeedProvider>(
        builder: (context, feedProvider, child) {
          if (feedProvider.isLoading) {
            return ListView(
              physics: BouncingScrollPhysics(),
              children: [
                StoryList(stories: []),
                PostSkeleton()
              ],
            );
          } else if (feedProvider.error != null) {
            return ErrorScreen(
              message: feedProvider.error!,
              onRetry: feedProvider.fetchFeed,
            );
          } else if (feedProvider.feedModel == null) {
            return ErrorScreen(
              message: 'No post data available',
              onRetry: feedProvider.fetchFeed,
            );
          } else {

            return RefreshIndicator(
              onRefresh: feedProvider.fetchFeed,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  StoryList(stories: feedProvider.feedModel!.stories),
                  PostList(posts: feedProvider.feedModel!.posts, refresher: feedProvider.fetchFeed),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

