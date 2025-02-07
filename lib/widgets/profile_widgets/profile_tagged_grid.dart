import 'package:flutter/material.dart';
import '../../models/gallery_item_model.dart';

class ProfileTaggedGrid extends StatelessWidget {
  final List<GalleryItem> taggedPosts;
  final Function(int) onTaggedPostTap;

  const ProfileTaggedGrid({Key? key, required this.taggedPosts, required this.onTaggedPostTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      itemCount: taggedPosts.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => onTaggedPostTap(index),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                taggedPosts[index].image,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Icon(Icons.person_pin, color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }
}

