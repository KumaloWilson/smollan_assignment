import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String profilePic;
  final int posts;
  final int followers;
  final int following;

  const ProfileHeader({
    super.key,
    required this.profilePic,
    required this.posts,
    required this.followers,
    required this.following,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(profilePic),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatColumn('Posts', posts.toString()),
                _buildStatColumn('Followers', followers.toString()),
                _buildStatColumn('Following', following.toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatColumn(String label, String count) {
    return Column(
      children: [
        Text(count, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(label),
      ],
    );
  }
}

