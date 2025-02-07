import 'package:flutter/material.dart';
import 'skeleton_container.dart';

class PostSkeleton extends StatelessWidget {
  const PostSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: SkeletonContainer(
              width: 40,
              height: 40,
              borderRadius: BorderRadius.circular(20),
            ),
            title: SkeletonContainer(height: 16),
            subtitle: SkeletonContainer(height: 12),
          ),
          // Post image
          AspectRatio(
            aspectRatio: 1,
            child: SkeletonContainer(height: double.infinity),
          ),
          // Post actions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(3, (index) =>
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: SkeletonContainer(width: 24, height: 24),
                      )
                  ),
                ),
                SkeletonContainer(width: 24, height: 24),
              ],
            ),
          ),
          // Likes
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: SkeletonContainer(width: 100, height: 16),
          ),
          // Caption
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonContainer(height: 16),
                SizedBox(height: 4),
                SkeletonContainer(height: 16),
                SizedBox(height: 4),
              ],
            ),
          ),
          // Comments
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonContainer(width: 100, height: 16),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

