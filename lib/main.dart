import 'package:app_2/core/routes/app_routes.dart';
import 'package:app_2/core/routes/routes_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: RoutesName.Proudects,
      onGenerateRoute: AppRoutes.generat,
    );
  }
}
