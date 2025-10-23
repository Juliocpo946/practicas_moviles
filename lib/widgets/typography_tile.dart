import 'package:flutter/material.dart';

class TypographyTile extends StatelessWidget {
  final String styleName;
  final TextStyle? style;

  const TypographyTile({
    super.key,
    required this.styleName,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            styleName,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Hello world',
            style: style,
          ),
          const Divider(height: 16),
        ],
      ),
    );
  }
}