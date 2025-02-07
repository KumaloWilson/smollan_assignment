import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';

class GeneralButton extends StatefulWidget {
  final Color? color;
  final Color? textColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final BoxBorder? boxBorder;
  final Color? hoverColor;
  final Color? pressedColor;
  final String text;
  final void Function()? onTap;

  const GeneralButton({
    super.key,
    this.color,
    this.textColor,
    this.width,
    this.height,
    this.borderRadius,
    this.boxBorder,
    this.hoverColor,
    this.pressedColor,
    required this.text,
    this.onTap,
  });

  @override
  State<GeneralButton> createState() => _GeneralButtonState();
}

class _GeneralButtonState extends State<GeneralButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      lowerBound: 0.95,
      upperBound: 1.0,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTapDown: (_) => _controller.reverse(),
      onTapUp: (_) async {
        _controller.forward();
        await Future.delayed(const Duration(milliseconds: 150));
        if (widget.onTap != null) widget.onTap!(); // Perform the action
      },
      onTapCancel: () => _controller.forward(),
      child: ScaleTransition(
        scale: _controller,
        child: Container(
          width: widget.width ?? 300,
          height: widget.height ?? 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: widget.color ?? theme.primaryColor,
            borderRadius: BorderRadius.circular(12),
            border: widget.boxBorder,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              highlightColor: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              splashColor: Colors.transparent,
              hoverColor: widget.hoverColor ?? Colors.black.withOpacity(0.05),
              onTap: () async {
                _controller.reverse();
                await Future.delayed(const Duration(milliseconds: 300));
                _controller.forward();
                if (widget.onTap != null) widget.onTap!();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Text(
                  widget.text,
                  style: TextStyle(
                    color: widget.textColor ?? Palette.instagramWhite,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
