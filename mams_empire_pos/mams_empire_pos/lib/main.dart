import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MamsEmpireApp());
}

class MamsEmpireApp extends StatelessWidget {
  const MamsEmpireApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MAMS Empire POS',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
    );
  }
}