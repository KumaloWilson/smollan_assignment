import 'package:flutter/material.dart';

class ProfileActionButtons extends StatelessWidget {
  const ProfileActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Edit Profile'),
              style: ElevatedButton.styleFrom(
                primary: InstagramColors.instagramWhite,
                onPrimary: InstagramColors.instagramBlack,
                side: BorderSide(color: InstagramColors.instagramLightGray),
              ),
            ),
          ),
          SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.person_add_outlined, color: InstagramColors.instagramBlack),
            style: ElevatedButton.styleFrom(
              primary: InstagramColors.instagramWhite,
              onPrimary: InstagramColors.instagramBlack,
              side: BorderSide(color: InstagramColors.instagramLightGray),
              minimumSize: Size(48, 48),
            ),
          ),
        ],
      ),
    );
  }
}

