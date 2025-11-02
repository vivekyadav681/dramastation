import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dramastation/screens/home_screen.dart';

final random = Random();

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final int imageIndex = random.nextInt(7) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(114, 193, 193, 193),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/introImage$imageIndex.jpeg',
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(height: 100),
            Text(
              'DRAMASTATION',
              style: GoogleFonts.playfairDisplay(
                letterSpacing: 7,
                color: const Color.fromARGB(199, 255, 255, 255),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Go to spot for drama lovers and book mongers',
              style: GoogleFonts.playfairDisplay(
                fontSize: 14,
                color: const Color.fromARGB(194, 181, 181, 181),
              ),
            ),
            Spacer(),
            Container(
              width: 150,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(20, 0, 0, 0),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(4, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (ctx) => HomeScreen()),
                  );
                },
                child: Text(
                  'dive in',
                  style: GoogleFonts.playfair(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
