import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:opay_rethink/homepage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      // statusBarIconBrightness: Brightness.dark,
      // statusBarBrightness: Brightness.light,
    ),
  );

  runApp(MaterialApp(home: HomePage()));
}
