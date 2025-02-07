import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smollan_assignment/models/post_model.dart';
import 'package:smollan_assignment/widgets/post_widgets/post_widget.dart';

class PostList extends StatelessWidget {
  final RefreshCallback refresher;
  final List<Post> posts;
  const PostList({super.key, required this.posts, required this.refresher});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 280,
      child: RefreshIndicator(
        onRefresh: refresher,
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];
            return PostWidget(post: post);
          },
        ),
      ),
    );
  }
}
