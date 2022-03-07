
import 'package:deezer_playlist/music_screen.dart';
import 'package:flutter/material.dart';

import 'deezer_screen.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeezerScreen(),
    );
  }
}
