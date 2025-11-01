import 'package:flutter/material.dart';
import 'package:dramastation/splash_screen.dart';

void main() {
  runApp(DramaStation());
}

class DramaStation extends StatelessWidget {
  const DramaStation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
