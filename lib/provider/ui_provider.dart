import 'package:flutter/material.dart';


class UIProvider with ChangeNotifier {
  
  String _assetImage = 'azul.png';
  double _size = 41.5;

  String get assetImage => 'assets/images/$_assetImage';

  set assetImage(String value) {
    _assetImage = value;
    notifyListeners();
  }

  double get size => _size;

  set size(double value) {
    _size = value;
    notifyListeners();
  }




}