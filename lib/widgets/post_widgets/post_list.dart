import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smollan_assignment/widgets/post_widgets/post_widget.dart';

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return PostWidget();
      },
    );
  }
}
