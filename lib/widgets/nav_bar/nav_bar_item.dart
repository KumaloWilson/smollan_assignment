

import 'package:flutter/material.dart';

class CustomNavBarItem extends StatelessWidget {
  final int index;
  final IconData icon;
  final bool isSelected;
  final ValueChanged<int> onTap;

  const CustomNavBarItem({
    super.key,
    required this.index,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 28,
          ),
          SizedBox(height: 4),
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? Colors.red : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}