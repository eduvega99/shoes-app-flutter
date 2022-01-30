import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void changeStatusLight() {
  final statusBarLight = SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.transparent
  );
  SystemChrome.setSystemUIOverlayStyle(statusBarLight);
}

void changeStatusDark() {  
  final statusBarDark = SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Colors.transparent
  );
  SystemChrome.setSystemUIOverlayStyle(statusBarDark);
}