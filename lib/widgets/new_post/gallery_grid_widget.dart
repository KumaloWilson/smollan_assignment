import 'package:flutter/material.dart';

class GalleryGridWidget extends StatelessWidget {
  const GalleryGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      itemCount: 30, // Replace with actual image count
      itemBuilder: (context, index) {
        return Image.network(
          'https://picsum.photos/200?random=$index',
          fit: BoxFit.cover,
        );
      },
    );
  }
}

