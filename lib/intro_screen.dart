import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(239, 238, 110, 6),
                Color.fromARGB(135, 255, 255, 255),
                Color.fromARGB(255, 33, 108, 23),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Opacity(
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/Logo.png',
                      width: 200,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Welcome to IAF Quiz",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.hindSiliguri(
                    fontSize: 25,
                    color: const Color.fromARGB(255, 143, 125, 10),
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 10),
                OutlinedButton.icon(
                  onPressed: () {
                    startQuiz();
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 28, 170, 210),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 25)),
                  icon: const Icon(Icons.airplanemode_on),
                  label: const Text("Start"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
