import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  final String username;
  final String profilePic;
  final String postDate;

  const PostHeader({
    Key? key,
    required this.username,
    required this.profilePic,
    required this.postDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(profilePic),
      ),
      title: Text(
        username,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(postDate),
      trailing: IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: () {/* Implement more options */},
      ),
    );
  }
}

