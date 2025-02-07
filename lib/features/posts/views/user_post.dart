import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:smollan_assignment/core/constants/color_constants.dart';
import '../../../providers/post_provider.dart';
import '../../../widgets/post_widgets/post_header.dart';
import '../../../widgets/post_widgets/post_image.dart';
import '../../../widgets/post_widgets/reaction_button.dart';
class PostScreen extends StatefulWidget {
  final String postId;

  const PostScreen({super.key, required this.postId});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<PostProvider>(context, listen: false).fetchPost(widget.postId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
        backgroundColor: theme.scaffoldBackgroundColor,
        actions: [
          TextButton(
            onPressed: () {
              // Implement delete post action
            },
            child: Text(
              'Follow',
              style: TextStyle(color: Palette.instagramBlue),
            ),
          ),
        ],
      ),
      body: Consumer<PostProvider>(
        builder: (context, postProvider, child) {
          if (postProvider.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (postProvider.error != null) {
            return Center(child: Text('Error: ${postProvider.error}'));
          } else if (postProvider.post == null) {
            return Center(child: Text('No post data available'));
          } else {
            final post = postProvider.post!;
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PostHeader(
                    username: post.username,
                    profilePic: post.profilePic,
                    postDate: post.postDate,
                  ),
                  PostImage(imageUrl: post.image),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        ReactionButton(
                          label: 'like',
                          icon: FontAwesomeIcons.heart,
                          value: '${post.likes}',
                          onTap: ()=>  postProvider.incrementLikes(),
                        ),
                        ReactionButton(
                          label: 'comment',
                          icon: FontAwesomeIcons.comment,
                          value: '56',
                          onTap: () {},
                        ),
                        ReactionButton(
                          label: 'share',
                          icon: FontAwesomeIcons.paperPlane,
                          value: '78',
                          onTap: () {},
                        ),
                        Spacer(),
                        GestureDetector(
                            child: Icon(FontAwesomeIcons.bookmark)
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReadMoreText(
                          post.caption,
                          trimLines: 2,
                          colorClickableText: Colors.pink,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'more',
                          trimExpandedText: ' ',
                          moreStyle: TextStyle(fontSize: 12,),
                          lessStyle: TextStyle(fontSize: 12,),

                        ),
                        SizedBox(height: 4),
                        Text(post.postDate, style: TextStyle(color: Colors.grey, fontSize: 12)),
                      ],
                    ),
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

