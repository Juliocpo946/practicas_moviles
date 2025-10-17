import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double verticalPadding;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;

  const ActionButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.verticalPadding = 16,
    this.backgroundColor = const Color(0xFF2E5C8A),
    this.textColor = Colors.white,
    this.borderRadius = 8,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: verticalPadding),
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(label),
    );
  }
}