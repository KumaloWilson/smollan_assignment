import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:smollan_assignment/core/constants/image_asset_constants.dart';
import 'package:smollan_assignment/widgets/story_widgets/story_list.dart';
import '../../../providers/feed_provider.dart';
import '../../../widgets/post_widgets/post_list.dart';
import '../../../widgets/story_widgets/story_circle.dart';


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
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        title: Image.asset(
          LocalImageConstants.secLogoDark,
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
            return Center(child: CircularProgressIndicator());
          } else if (feedProvider.error != null) {
            return Center(child: Text('Error: ${feedProvider.error}'));
          } else if (feedProvider.feedModel == null) {
            return Center(child: Text('No data available'));
          } else {

            return ListView(
              physics: BouncingScrollPhysics(),
              children: [
                StoryList(stories: feedProvider.feedModel!.stories),
                PostList(posts: feedProvider.feedModel!.posts),
              ],
            );
          }
        },
      ),
    );
  }
}

