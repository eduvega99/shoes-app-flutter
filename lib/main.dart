import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:shoes_app/provider/providers.dart';
import 'package:shoes_app/router/app_routes.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( create: ( _ ) => UIProvider() ),
      ],
      child: const MyApp(),
    );
  }
}

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