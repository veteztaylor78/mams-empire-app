import 'package:flutter/material.dart';

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

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade700,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              Icons.store,
              size: 100,
              color: Colors.white,
            ),

            SizedBox(height: 20),

            Text(
              "MAMS EMPIRE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "Food Stuff & Sales",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),

            SizedBox(height: 40),

            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: const Center(
        child: Text(
          "Login Screen Coming Next...",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}