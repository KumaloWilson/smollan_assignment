import 'package:flutter/material.dart';
import '../../models/gallery_item_model.dart';

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
                builder: (context) => PostScreen(postId: posts[index].id),
              ),
            );
          },
          child: Image.network(
            posts[index].image,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
