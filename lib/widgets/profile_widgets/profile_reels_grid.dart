import 'package:flutter/material.dart';
import '../../models/gallery_item_model.dart';
import '../../models/profile_model.dart';

class ProfileReelsGrid extends StatelessWidget {
  final List<GalleryItem> reels;
  final Function(int) onReelTap;

  const ProfileReelsGrid({super.key, required this.reels, required this.onReelTap});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        childAspectRatio: 2/3,
      ),
      itemCount: reels.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => onReelTap(index),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                reels[index].image,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 8,
                left: 8,
                child: Icon(Icons.play_arrow, color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }
}

