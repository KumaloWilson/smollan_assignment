import 'package:flutter/material.dart';
import 'package:smollan_assignment/widgets/custom_button/general_button.dart';

class ProfileActionButtons extends StatelessWidget {
  const ProfileActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: GeneralButton(
              text: 'Edit Profile',
            )
          ),
          SizedBox(width: 8),
          Expanded(
              child: GeneralButton(
                text: 'Edit Profile',
              )
          ),
        ],
      ),
    );
  }
}

