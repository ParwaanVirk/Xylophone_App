import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(xylophoneApp());

class xylophoneApp extends StatelessWidget {

  void playSound(int x){
              final player = AudioCache();
               player.play('note$x.wav');
  }

  Expanded buildkey(Color color, int j)
  {
    return Expanded(
      child: FlatButton(
                  color: color,
               onPressed: () {
                 playSound(j);
                 }, 
                 child: null),
                 );
      
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            buildkey(Colors.red, 1),
            buildkey(Colors.yellow, 2),
            buildkey(Colors.green, 3),
            buildkey(Colors.blue, 4),
            buildkey(Colors.purple, 5),
            buildkey(Colors.black, 6),
            buildkey(Colors.brown, 7),

            ],
          ),
          ),
      ),
    );
  }
}



// learn about crossaxis allignment 
// learn about plugins 
// learnt about Expanded widget
// learnt how to effectiely use functions 

