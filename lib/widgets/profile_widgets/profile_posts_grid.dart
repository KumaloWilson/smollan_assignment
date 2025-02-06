import 'package:flutter/material.dart';

class ProfilePostsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      itemCount: 30,
      itemBuilder: (context, index) {
        return Image.network(
          'https://picsum.photos/200',
          fit: BoxFit.cover,
        );
      },
    );
  }
}

