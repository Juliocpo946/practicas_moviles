import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final String label;
  final double height;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final double borderRadius;
  final double fontSize;

  const StatCard({
    super.key,
    required this.label,
    this.height = 100,
    this.backgroundColor = const Color(0xFF2A2A2A),
    this.borderColor = const Color(0xFF3A3A3A),
    this.textColor = const Color(0xFFB0B0B0),
    this.borderRadius = 8,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
          ),
        ),
      ),
    );
  }
}