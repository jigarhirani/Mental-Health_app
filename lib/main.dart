import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mentalhelthapp/pages/chat.dart';
import 'package:mentalhelthapp/pages/consultant.dart';
import 'package:mentalhelthapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chat(),
    );
  }
}