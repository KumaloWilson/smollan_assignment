import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:smollan_assignment/core/constants/color_constants.dart';

import '../../../providers/post_provider.dart';
import '../../../widgets/error_widgets/error_widget.dart';
import '../../../widgets/post_widgets/post_header.dart';
import '../../../widgets/post_widgets/post_image.dart';
import '../../../widgets/post_widgets/reaction_button.dart';
import '../../../widgets/skeleton_widgets/post_skeleton.dart';

class PostScreen extends StatefulWidget {
  final String postId;

  const PostScreen({super.key, required this.postId});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _likeHeartAnimation;
  bool _showLikeAnimation = false;

  @override
  void initState() {
    super.initState();

    // Fetch post data
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<PostProvider>(context, listen: false).fetchPost(widget.postId);
    });

    // Initialize like animation controller
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _likeHeartAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0.5, end: 1.5), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 1.5, end: 1.0), weight: 50),
    ]).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleDoubleTapLike(PostProvider postProvider) {
    setState(() {
      _showLikeAnimation = true;
    });
    postProvider.incrementLikes();
    _animationController.forward(from: 0.0);

    // Reset like animation after a short delay
    Future.delayed(Duration(milliseconds: 800), () {
      setState(() {
        _showLikeAnimation = false;
      });
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
              // Implement follow action
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
            return PostSkeleton();
          } else if (postProvider.error != null) {
            return ErrorScreen(
              message: postProvider.error!,
              onRetry: () => postProvider.fetchPost(widget.postId),
            );
          } else if (postProvider.post == null) {
            return ErrorScreen(
              message: 'No post data available',
              onRetry: () => postProvider.fetchPost(widget.postId),
            );
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
                  GestureDetector(
                    onDoubleTap: () => _handleDoubleTapLike(postProvider),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        PostImage(imageUrl: post.image),
                        if (_showLikeAnimation)
                          ScaleTransition(
                            scale: _likeHeartAnimation,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white.withOpacity(0.9),
                              size: 120,
                            ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => postProvider.incrementLikes(),
                          child: Icon(
                            postProvider.isLiked
                                ? FontAwesomeIcons.solidHeart
                                : FontAwesomeIcons.heart,
                            color: postProvider.isLiked ? Colors.red : Colors.black,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text('${post.likes}', style: TextStyle(fontSize: 12)),
                        SizedBox(width: 16),
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
                          moreStyle: TextStyle(fontSize: 12),
                          lessStyle: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 4),
                        Text(
                            post.postDate,
                            style: TextStyle(color: Colors.grey, fontSize: 12)
                        ),
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