import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:face_pile/face_pile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:smollan_assignment/widgets/post_widgets/reaction_button.dart';
import 'package:smollan_assignment/widgets/skeleton_widgets/image_skeleton.dart';
import '../../features/profile/views/user_profile_screen.dart';
import '../../models/post_model.dart';

class PostWidget extends StatefulWidget {
  final Post post;
  const PostWidget({super.key, required this.post});

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> with SingleTickerProviderStateMixin {
  bool _isLiked = false;
  int _likeCount = 0;
  bool _showHeartAnimation = false;

  late AnimationController _animationController;
  late Animation<double> _animation;

  String generateRandomNumber({int min = 0, int max = 100}) {
    final random = Random();
    return (min + random.nextInt(max - min + 1)).toString();
  }

  @override
  void initState() {
    super.initState();
    _likeCount = int.parse(generateRandomNumber());

    // Animation setup for heart overlay
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.5, end: 1.5).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.elasticOut,
      ),
    );

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _showHeartAnimation = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onDoubleTapLike() {
    setState(() {
      if (!_isLiked) {
        _isLiked = true;
        _likeCount++;
        _showHeartAnimation = true;
        _animationController.forward(from: 0.0);
      }
    });
  }

  void _onHeartTap() {
    setState(() {
      _isLiked = !_isLiked;
      _isLiked ? _likeCount++ : _likeCount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserProfileScreen(username: widget.post.username),
                )
            );
          },
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.post.profilePic),
          ),
          title: Text(widget.post.username),
          trailing: Icon(Icons.more_vert),
        ),
        GestureDetector(
          onDoubleTap: _onDoubleTapLike,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CachedNetworkImage(
                  imageUrl: widget.post.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  placeholder: (context, url) => ImageSkeleton()
              ),
              if (_showHeartAnimation)
                ScaleTransition(
                  scale: _animation,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white.withOpacity(0.8),
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
              ReactionButton(
                label: 'like',
                icon: _isLiked ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
                iconColor: _isLiked ? Colors.red : null,
                value: _likeCount.toString(),
                onTap: _onHeartTap,
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
          child: Row(
            children: [
              FacePile(
                radius: 10,
                space: 16,
                images: [
                  NetworkImage("https://i.pravatar.cc/300?img=1"),
                  NetworkImage("https://i.pravatar.cc/300?img=2"),
                  NetworkImage("https://i.pravatar.cc/300?img=3"),
                  NetworkImage("https://i.pravatar.cc/300?img=4"),
                ],
              ),
              SizedBox(width: 8),
              Text('Liked by $_likeCount', style: TextStyle(fontSize: 12)),
            ],
          ),
        ),
        SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReadMoreText(
                widget.post.caption,
                trimLines: 1,
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'more',
                trimExpandedText: ' ',
                moreStyle: TextStyle(fontSize: 12),
                lessStyle: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 4),
              Text('2 HOURS AGO', style: TextStyle(color: Colors.grey, fontSize: 10)),
            ],
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
