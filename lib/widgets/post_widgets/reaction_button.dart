import 'package:flutter/material.dart';

class ReactionButton extends StatelessWidget {
  final void Function() onTap;
  final String label;
  final String value;  
  final IconData icon;
  final Color? iconColor;
  const ReactionButton({super.key, required this.onTap, required this.label, required this.value, required this.icon, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                icon,
                color: iconColor ?? null ,
              )
          ),
          Text(value),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
