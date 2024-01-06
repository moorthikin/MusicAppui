import 'package:flutter/material.dart';
import 'package:music_playerapp/musicplayer.dart';

void main() {
  runApp(MusicPlayerApp());
}
class MusicPlayerApp extends StatelessWidget {
  const MusicPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicPlayerScreen(),
    );
  }
}