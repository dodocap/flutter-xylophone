import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

class XylophoneScreen extends StatefulWidget {
  const XylophoneScreen({super.key});

  @override
  State<XylophoneScreen> createState() => _XylophoneScreenState();
}

class _XylophoneScreenState extends State<XylophoneScreen> {
  final Soundpool _soundpool = Soundpool.fromOptions(options: SoundpoolOptions.kDefault);

  final List<int> _soundIdList = [];

  @override
  void initState() {
    _initSoundPool();

    super.initState();
  }

  Future<void> _initSoundPool() async {
    int soundId = await rootBundle.load('assets/do1.wav').then((soundData) => _soundpool.load(soundData));
    _soundIdList.add(soundId);

    soundId = await rootBundle.load('assets/re.wav').then((soundData) => _soundpool.load(soundData));
    _soundIdList.add(soundId);

    soundId = await rootBundle.load('assets/mi.wav').then((soundData) => _soundpool.load(soundData));
    _soundIdList.add(soundId);

    soundId = await rootBundle.load('assets/pa.wav').then((soundData) => _soundpool.load(soundData));
    _soundIdList.add(soundId);

    soundId = await rootBundle.load('assets/sol.wav').then((soundData) => _soundpool.load(soundData));
    _soundIdList.add(soundId);

    soundId = await rootBundle.load('assets/la.wav').then((soundData) => _soundpool.load(soundData));
    _soundIdList.add(soundId);

    soundId = await rootBundle.load('assets/si.wav').then((soundData) => _soundpool.load(soundData));
    _soundIdList.add(soundId);

    soundId = await rootBundle.load('assets/do2.wav').then((soundData) => _soundpool.load(soundData));
    _soundIdList.add(soundId);
  }

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
