import 'package:flutter/material.dart';

import 'package:shoes_app/screens/screens.dart';


class AppRoutes {
  
  static String initialRoute = 'shoes';

  static Map<String, Widget Function(BuildContext)> routes =  {
    'shoes': ( _ ) => const ShoesScreen(),
  };

}