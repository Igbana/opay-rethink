import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:opay_rethink/homepage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle());

  runApp(MaterialApp(home: HomePage()));
}
