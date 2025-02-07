import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../features/posts/views/user_post.dart';
import '../../models/gallery_item_model.dart';
import '../skeleton_widgets/image_skeleton.dart';

class ProfilePostsGrid extends StatelessWidget {
  final List<GalleryItem> posts;
  final Function(int) onPostTap;

  const ProfilePostsGrid({super.key, required this.posts, required this.onPostTap});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PostScreen(postId: posts[index].image),
              ),
            );
          },
          child: CachedNetworkImage(
            imageUrl: posts[index].image,
            fit: BoxFit.cover,
            placeholder: (context, url) => ImageSkeleton(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        );
      },
    );
  }
}
