import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReactionButton extends StatefulWidget {
  final void Function() onTap;
  final String label;
  final String value;  
  final IconData icon;
  const ReactionButton({super.key, required this.onTap, required this.label, required this.value, required this.icon});

  @override
  State<ReactionButton> createState() => _ReactionButtonState();
}

class _ReactionButtonState extends State<ReactionButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(widget.icon)
          ),
          Text(widget.value),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
