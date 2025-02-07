import 'package:flutter/material.dart';
import 'package:smollan_assignment/core/constants/color_constants.dart';

class SkeletonContainer extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;

  const SkeletonContainer({
    super.key,
    this.width = double.infinity,
    required this.height,
    this.borderRadius = const BorderRadius.all(Radius.circular(0)),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Palette.instagramLightGray,
        borderRadius: borderRadius,
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: LinearProgressIndicator(
          backgroundColor: Palette.instagramLightGray,
          valueColor: AlwaysStoppedAnimation<Color>(Palette.instagramLightGray),
        ),
      ),
    );
  }
}

