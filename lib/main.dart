import 'package:flutter/material.dart';
import 'package:ui_design/login.dart';
import 'package:ui_design/register.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyLogin(),
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
    },
  ));
}
