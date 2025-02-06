import 'package:flutter/material.dart';
import 'nav_bar_item.dart';


class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CustomNavBarItem(index: 0, icon: Icons.home_rounded, isSelected: selectedIndex == 0, onTap: onItemTapped),
          CustomNavBarItem(index: 1, icon: Icons.search, isSelected: selectedIndex == 1, onTap: onItemTapped),
          CustomNavBarItem(index: 2, icon: Icons.add_box_outlined, isSelected: selectedIndex == 2, onTap: onItemTapped),
          CustomNavBarItem(index: 3, icon: Icons.video_library, isSelected: selectedIndex == 3, onTap: onItemTapped),
          CustomNavBarItem(index: 4, icon: Icons.person, isSelected: selectedIndex == 4, onTap: onItemTapped),
        ],
      ),
    );
  }
}
