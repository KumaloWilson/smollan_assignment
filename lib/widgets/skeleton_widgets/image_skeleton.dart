import 'package:flutter/material.dart';
import 'skeleton_container.dart';

class ImageSkeleton extends StatelessWidget {
  const ImageSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: SkeletonContainer(height: double.infinity),
    );
  }
}

