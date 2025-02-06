import 'package:flutter/material.dart';
import '../../core/constants/color_constants.dart';

class CustomTextField extends StatefulWidget {
  final Color? fillColor;
  final bool? filled;
  final Color? focusedBorderColor;
  final Color? defaultBorderColor;
  final TextEditingController? controller;
  final String? labelText;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSubmitted;
  final VoidCallback? onEditingComplete;
  final void Function(PointerDownEvent?)? onTapOutSide;
  final bool? obscureText;
  final TextStyle? labelStyle;
  final TextStyle? inputTextStyle;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final int? maxLength;
  final Widget? suffixIconButton;
  final bool? enabled;
  final bool? readOnly;
  final double? borderRadius;
  final EdgeInsets? contentPadding;
  final FocusNode? focusNode;

  const CustomTextField({
    super.key,
    this.maxLength,
    this.readOnly,
    this.controller,
    this.fillColor,
    this.filled,
    this.defaultBorderColor,
    this.focusedBorderColor,
    required this.labelText,
    this.labelStyle,
    this.inputTextStyle,
    this.keyboardType,
    this.prefixIcon,
    this.obscureText,
    this.suffixIconButton,
    this.enabled,
    this.onChanged,
    this.onSubmitted,
    this.onEditingComplete,
    this.onTapOutSide,
    this.borderRadius,
    this.contentPadding, // Add contentPadding to constructor
    this.focusNode,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _internalFocusNode;

  @override
  void initState() {
    super.initState();
    _internalFocusNode = widget.focusNode ?? FocusNode();
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _internalFocusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // Close the keyboard when tapping outside
      },
      child: TextField(
        maxLength: widget.maxLength,
        keyboardType: widget.keyboardType ?? TextInputType.text,
        obscureText: widget.obscureText ?? false,
        controller: widget.controller,
        onChanged: widget.onChanged,
        readOnly: widget.readOnly ?? false,
        onSubmitted: widget.onSubmitted,
        onEditingComplete: widget.onEditingComplete,
        onTapOutside: widget.onTapOutSide ?? (event){
          FocusScope.of(context).unfocus();
          FocusScope.of(context).requestFocus(FocusNode());
        },
        enabled: widget.enabled ?? true,
        focusNode: _internalFocusNode,
        decoration: InputDecoration(
          counterText: '',
          contentPadding: widget.contentPadding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIconButton,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: widget.defaultBorderColor ?? Colors.grey.shade400),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: widget.defaultBorderColor ?? Colors.grey.shade400),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: widget.focusedBorderColor ?? Colors.grey.shade400),
          ),
          hintText: widget.labelText,
          labelStyle: widget.labelStyle ??
              Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: Colors.grey),
        ),
        style: widget.inputTextStyle ??
            Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).primaryColor),
      ),
    );
  }
}

