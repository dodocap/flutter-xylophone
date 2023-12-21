import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class XylophoneScreen extends StatelessWidget {
  const XylophoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: keyboard('도', const Color.fromARGB(255, 255, 0, 0)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: keyboard('레', const Color.fromARGB(255, 255, 165, 0)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            child: keyboard('미', const Color.fromARGB(255, 255, 255, 0)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: keyboard('파', const Color.fromARGB(255, 0, 128, 0)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48.0),
            child: keyboard('솔', const Color.fromARGB(255, 0, 255, 0)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 56.0),
            child: keyboard('라', const Color.fromARGB(255, 0, 0, 255)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 64.0),
            child: keyboard('시', const Color.fromARGB(255, 0, 0, 128)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 72.0),
            child: keyboard('도', const Color.fromARGB(255, 128, 0, 128)),
          ),
        ],
      ),
    );
  }

  Widget keyboard(String text, Color color) {
    return Container(
      width: 50,
      height: double.infinity,
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
