import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Widget createwidget(int n, Color c) {
    return Expanded(
      child: FlatButton(
        color: c,
        onPressed: () {
          final player = AudioCache();
          player.play('note$n.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Xylophone'),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            createwidget(1, Colors.purple),
            createwidget(2, Colors.indigo),
            createwidget(3, Colors.blue),
            createwidget(4, Colors.green),
            createwidget(5, Colors.yellow),
            createwidget(6, Colors.deepOrangeAccent),
            createwidget(7, Colors.red),


          ],
        )),
      ),
    );
  }
}
