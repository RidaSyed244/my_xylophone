import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playsounds(int soundnumber) {
    final player = AudioPlayer();

    player.play(AssetSource('note$soundnumber.wav'));
  }

  Expanded buildKey({backgroundColor, soundnumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
        onPressed: () {
          playsounds(soundnumber);
        },
        child: Text('Click me'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundnumber: 1, backgroundColor: Colors.red),
              buildKey(soundnumber: 2, backgroundColor: Colors.green),
              buildKey(soundnumber: 3, backgroundColor: Colors.orange),
              buildKey(soundnumber: 4, backgroundColor: Colors.blue),
              buildKey(soundnumber: 5, backgroundColor: Colors.yellow),
              buildKey(soundnumber: 6, backgroundColor: Colors.pink),
              buildKey(soundnumber: 7, backgroundColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
