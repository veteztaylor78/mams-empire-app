import 'package:flutter/material.dart';
import 'theme.dart';
import '../screens/splash/splash_screen.dart';

class MamsEmpireApp extends StatelessWidget {
  const MamsEmpireApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MAMS Empire POS',
      theme: AppTheme.light,
      home: const SplashScreen(),
    );
  }
}