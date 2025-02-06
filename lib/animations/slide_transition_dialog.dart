import 'package:flutter/material.dart';

class SlideTransitionDialog extends StatefulWidget {
  final Widget child;

  const SlideTransitionDialog({super.key, required this.child});

  @override
  State<SlideTransitionDialog> createState() => _SlideTransitionDialogState();
}

class _SlideTransitionDialogState extends State<SlideTransitionDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Dialog(
        alignment: Alignment.bottomCenter,
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        child: widget.child,
      ),
    );
  }
}
