import 'package:flutter/material.dart';

class SearchContentGrid extends StatelessWidget {
  final String? searchQuery;

  SearchContentGrid({this.searchQuery});

  @override
  Widget build(BuildContext context) {
    // In a real app, you would fetch images based on the search query
    // For this example, we'll just use placeholder images
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemCount: 30,
      itemBuilder: (context, index) {
        return Image.network(
          'https://picsum.photos/200?random=$index',
          fit: BoxFit.cover,
        );
      },
    );
  }
}

