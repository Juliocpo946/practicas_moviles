import 'package:flutter/material.dart';
import '../widgets/typography_tile.dart';

class TypographyScreen extends StatelessWidget {
  const TypographyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final typographyStyles = {
      'Display Large': textTheme.displayLarge,
      'Display Medium': textTheme.displayMedium,
      'Display Small': textTheme.displaySmall,
      'Headline Large': textTheme.headlineLarge,
      'Headline Medium': textTheme.headlineMedium,
      'Headline Small': textTheme.headlineSmall,
      'Title Large': textTheme.titleLarge,
      'Title Medium': textTheme.titleMedium,
      'Title Small': textTheme.titleSmall,
      'Label Large': textTheme.labelLarge,
      'Label Medium': textTheme.labelMedium,
      'Label Small': textTheme.labelSmall,
      'Body Large': textTheme.bodyLarge,
      'Body Medium': textTheme.bodyMedium,
      'Body Small': textTheme.bodySmall,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipografías del Tema'),
      ),
      body: ListView.builder(
        itemCount: typographyStyles.length,
        itemBuilder: (context, index) {
          final styleName = typographyStyles.keys.elementAt(index);
          final style = typographyStyles.values.elementAt(index);
          return TypographyTile(
            styleName: styleName,
            style: style,
          );
        },
      ),
    );
  }
}