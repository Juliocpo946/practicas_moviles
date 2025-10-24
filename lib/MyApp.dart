import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'core/route/app_router.dart';
import 'core/route/app_routes.dart';
import 'core/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: MaterialTheme(Theme.of(context).textTheme).light(),
      darkTheme: MaterialTheme(Theme.of(context).textTheme).dark(),
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.colors,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}