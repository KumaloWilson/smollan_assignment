import 'package:flutter/material.dart';

class ProfileAbout extends StatelessWidget {
  final String username;
  final String designation;
  final String description;
  final String website;

  const ProfileAbout({
    super.key,
    required this.username,
    required this.designation,
    required this.description,
    required this.website,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(username, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          SizedBox(height: 4),
          Text(designation, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text(description),
          SizedBox(height: 4),
          Text(website, style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }
}

