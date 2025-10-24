import 'package:flutter/material.dart';
import 'app_routes.dart';
import '../../screens/color_card_screen.dart';
import '../../screens/dashboard_screen.dart';
import '../../screens/responsive_card_screen.dart';
import '../../screens/typography_screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.colors:
        return MaterialPageRoute(builder: (_) => const ColorCardScreen());
      case AppRoutes.dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      case AppRoutes.typography:
        return MaterialPageRoute(builder: (_) => const TypographyScreen());
      case AppRoutes.responsive:
        final message = settings.arguments as String?;
        return MaterialPageRoute(
          builder: (_) => ResponsiveCardScreen(message: message ?? 'Sin mensaje'),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Ruta no encontrada: ${settings.name}'),
            ),
          ),
        );
    }
  }
}