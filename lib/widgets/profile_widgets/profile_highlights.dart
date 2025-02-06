import 'package:flutter/material.dart';

class ProfileHighlights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      //color: InstagramColors.instagramLightGray,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://picsum.photos/200'),
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Highlight ${index + 1}',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

