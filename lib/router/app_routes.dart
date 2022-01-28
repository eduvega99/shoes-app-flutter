import 'package:flutter/material.dart';

import 'package:shoes_app/screens/screens.dart';


class AppRoutes {
  
  static String initialRoute = 'description';

  static Map<String, Widget Function(BuildContext)> routes =  {
    'preview': ( _ ) => const ShoesPreviewScreen(),
    'description': ( _ ) => const ShoesDescriptionScreen()
  };

}