import 'package:flutter/material.dart';
import 'package:shoes_app/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShoesApp',
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.initialRoute,
    );
  }
  
}