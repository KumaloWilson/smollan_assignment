import 'package:flutter/material.dart';

/// A customizable dropdown widget with an optional prefix icon and support for enabling/disabling.
class CustomDropDown extends StatelessWidget {
  final List<String> items;
  final String selectedValue;
  final Widget? prefix;
  final Color? iconColor;
  final void Function(String?)? onChanged;
  final bool isEnabled;

  const CustomDropDown({
    super.key,
    this.prefix,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    this.isEnabled = true, // Default to enabled
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isEnabled ? Colors.transparent : theme.disabledColor.withOpacity(0.2),
        border: Border.all(
          color: theme.disabledColor.withOpacity(0.2),
        ),
      ),
      child: Row(
        children: [
          if (prefix != null)
            prefix!,
          const SizedBox(width: 8),
          Expanded(
            child: DropdownButton<String>(
              value: selectedValue,
              items: items.map((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: theme.textTheme.bodyMedium?.copyWith(fontSize: 12),
                  ),
                );
              }).toList(),
              onChanged: isEnabled ? onChanged : null,
              isExpanded: true,
              underline: const SizedBox(),
              style: theme.textTheme.bodyMedium?.copyWith(color: Colors.black),
              iconEnabledColor: iconColor ?? theme.iconTheme.color,
              icon: const Icon(Icons.arrow_drop_down),
              hint: const Text(
                'Select',
                style: TextStyle(color: Colors.grey),
              ),
              elevation: 8,
              borderRadius: BorderRadius.circular(10),
              dropdownColor: theme.cardColor,
            ),
          ),
        ],
      ),
    );
  }
}
