import 'package:flutter/material.dart';
import '../widgets/color_card.dart';

class ColorCardScreen extends StatelessWidget {
  const ColorCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final colors = {
      'Primary': colorScheme.primary,
      'On Primary': colorScheme.onPrimary,
      'Primary Container': colorScheme.primaryContainer,
      'On Primary Container': colorScheme.onPrimaryContainer,
      'Secondary': colorScheme.secondary,
      'On Secondary': colorScheme.onSecondary,
      'Secondary Container': colorScheme.secondaryContainer,
      'On Secondary Container': colorScheme.onSecondaryContainer,
      'Tertiary': colorScheme.tertiary,
      'On Tertiary': colorScheme.onTertiary,
      'Tertiary Container': colorScheme.tertiaryContainer,
      'On Tertiary Container': colorScheme.onTertiaryContainer,
      'Error': colorScheme.error,
      'On Error': colorScheme.onError,
      'Error Container': colorScheme.errorContainer,
      'On Error Container': colorScheme.onErrorContainer,
      'Surface': colorScheme.surface,
      'On Surface': colorScheme.onSurface,
      'Surface Variant': colorScheme.surfaceContainerHighest,
      'On Surface Variant': colorScheme.onSurfaceVariant,
      'Outline': colorScheme.outline,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Paleta de Colores del Tema'),
        elevation: 2,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final crossAxisCount = (constraints.maxWidth / 200).floor().clamp(2, 6);
          return GridView.builder(
            padding: const EdgeInsets.all(16.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 3 / 2,
            ),
            itemCount: colors.length,
            itemBuilder: (context, index) {
              final colorName = colors.keys.elementAt(index);
              final color = colors.values.elementAt(index);
              return ColorCard(
                colorName: colorName,
                color: color,
              );
            },
          );
        },
      ),
    );
  }
}