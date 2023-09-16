import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({super.key});
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Developed by Anubhav Arya")),
          backgroundColor: const Color.fromARGB(255, 198, 96, 7),
        ),
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
            child: Center(child: SpinImage()),
          ),
        ),
      ),
    );
  }
}

class SpinImage extends StatefulWidget {
  @override
  _SpinImageState createState() => _SpinImageState();
}

class _SpinImageState extends State<SpinImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Congratulations! You have answered all questions correctly",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          RotationTransition(
            turns: _controller,
            child: const Image(
              image: AssetImage('assets/images/wheel.png'),
              height: 150,
              width: 150,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '"Touch the Sky with Glory"',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.airplanemode_on,
              size: 50,
              color: Color.fromARGB(255, 22, 4, 135),
            ),
            label: const Text(""),
          )
        ],
      ),
    );
  }
}
