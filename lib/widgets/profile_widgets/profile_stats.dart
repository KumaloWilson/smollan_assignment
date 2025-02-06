import 'package:flutter/material.dart';
import '../constants/instagram_colors.dart';

class ProfileStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatColumn('Posts', '123'),
          _buildStatColumn('Followers', '10.5K'),
          _buildStatColumn('Following', '500'),
        ],
      ),
    );
  }

  Widget _buildStatColumn(String label, String count) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: InstagramColors.instagramBlack,
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: InstagramColors.instagramGray,
          ),
        ),
      ],
    );
  }
}

