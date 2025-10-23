import 'package:flutter/material.dart';

class ColorCard extends StatelessWidget {
  final String colorName;
  final Color color;

  const ColorCard({
    super.key,
    required this.colorName,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = color.computeLuminance() < 0.5;
    final textColor = isDark ? Colors.white : Colors.black;

    return Card(
      color: color,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          colorName,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}