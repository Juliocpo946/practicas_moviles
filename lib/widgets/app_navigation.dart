import 'package:flutter/material.dart';
import '../core/route/app_routes.dart';

class AppNavigation extends StatelessWidget {
  const AppNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        spacing: 12.0,
        runSpacing: 12.0,
        alignment: WrapAlignment.center,
        children: <Widget>[
          ElevatedButton.icon(
            icon: const Icon(Icons.dashboard),
            label: const Text('Dashboard'),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.dashboard);
            },
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.text_fields),
            label: const Text('Tipografía'),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.typography);
            },
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.aspect_ratio),
            label: const Text('Adaptable'),
            onPressed: () {
              Navigator.pushNamed(
                context,
                AppRoutes.responsive,
                arguments: 'Hola desde Colores!',
              );
            },
          ),
        ],
      ),
    );
  }
}