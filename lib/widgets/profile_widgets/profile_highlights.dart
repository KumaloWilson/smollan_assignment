import 'package:flutter/material.dart';
import '../../models/highlight_model.dart';
import '../../models/profile_model.dart';

class ProfileHighlights extends StatelessWidget {
  final List<Highlight> highlights;

  const ProfileHighlights({super.key, required this.highlights});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: highlights.length,
        itemBuilder: (context, index) {
          final highlight = highlights[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(highlight.cover),
                ),
                SizedBox(height: 4),
                Text(highlight.title, style: TextStyle(fontSize: 12)),
              ],
            ),
          );
        },
      ),
    );
  }
}

