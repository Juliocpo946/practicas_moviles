import 'package:flutter/material.dart';
import '../widgets/action_button.dart';
import '../widgets/stat_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth > 600;
            final buttonSpacing = constraints.maxWidth * 0.02;
            final cardSpacing = constraints.maxWidth * 0.015;

            return SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      'Dashboard de estadísticas',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  isWide
                      ? Row(
                    children: [
                      const Flexible(
                        flex: 50,
                        child: StatCard(label: 'Tarjeta 1'),
                      ),
                      SizedBox(width: cardSpacing),
                      const Flexible(
                        flex: 30,
                        child: StatCard(label: 'Tarjeta 2'),
                      ),
                      SizedBox(width: cardSpacing),
                      const Expanded(
                        child: StatCard(label: 'Tarjeta 3'),
                      ),
                    ],
                  )
                      : const Column(
                    children: [
                      StatCard(label: 'Tarjeta 1'),
                      SizedBox(height: 16),
                      StatCard(label: 'Tarjeta 2'),
                      SizedBox(height: 16),
                      StatCard(label: 'Tarjeta 3'),
                    ],
                  ),
                  const SizedBox(height: 32),
                  isWide
                      ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ActionButton(
                          label: 'Botón 1',
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: buttonSpacing),
                      Expanded(
                        child: ActionButton(
                          label: 'Botón 2',
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: buttonSpacing),
                      Expanded(
                        child: ActionButton(
                          label: 'Botón 3',
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                      : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ActionButton(
                        label: 'Botón 1',
                        onPressed: () {},
                      ),
                      SizedBox(height: 16),
                      ActionButton(
                        label: 'Botón 2',
                        onPressed: () {},
                      ),
                      SizedBox(height: 16),
                      ActionButton(
                        label: 'Botón 3',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}