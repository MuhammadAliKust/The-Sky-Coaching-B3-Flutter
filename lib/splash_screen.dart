import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png'),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Newzler",
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 40,
          ),
          const CircularProgressIndicator()
        ],
      ),
    );
  }
}
