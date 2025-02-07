import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/new_post_provider.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NewPostProvider>(
      builder: (context, newPostProvider, child) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
          ),
          itemCount: 30, // Replace with actual image count
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => newPostProvider.selectImage(index),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://picsum.photos/200?random=$index',
                    fit: BoxFit.cover,
                  ),
                  if (newPostProvider.selectedImageIndex == index)
                    Container(
                      color: Colors.white.withOpacity(0.5),
                      child: Icon(Icons.check_circle, color: Colors.blue),
                    ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

