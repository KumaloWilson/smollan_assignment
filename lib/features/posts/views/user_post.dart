import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/post_provider.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Post'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
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
                  PostActions(
                    onLike: () => postProvider.incrementLikes(),
                    onComment: () {/* Implement comment action */},
                    onShare: () {/* Implement share action */},
                  ),
                  PostLikes(likes: post.likes),
                  PostCaption(
                    username: post.username,
                    caption: post.caption,
                  ),
                  PostComments(
                    postText: post.postText,

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

