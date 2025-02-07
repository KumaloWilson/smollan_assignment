import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smollan_assignment/core/constants/color_constants.dart';
import 'package:smollan_assignment/widgets/custom_button/general_button.dart';

class ProfileActionButtons extends StatelessWidget {
  final bool showAddButton;
  const ProfileActionButtons({super.key, required this.showAddButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: GeneralButton(
              text: 'Follow',
              color: Palette.instagramBlue,
            )
          ),
          SizedBox(width: 8),
          Expanded(
              child: GeneralButton(
                text: 'Message',
                color: Palette.instagramLightGray,
              )
          ),

          showAddButton ? Row(
            children: [
              SizedBox(
                width: 8,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Palette.instagramLightGray,
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Icon(
                  FontAwesomeIcons.userPlus,
                  size: 15,
                  color: Palette.instagramWhite,
                ),
              ),
            ],
          ) : SizedBox()
        ],
      ),
    );
  }
}

