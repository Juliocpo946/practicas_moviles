import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'screens/dashboard_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E3A5F),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const DashboardScreen(),
    );
  }
}
