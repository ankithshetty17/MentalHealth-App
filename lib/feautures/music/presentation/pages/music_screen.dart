import 'package:flutter/material.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset('assets/down_arrow.png'),
        actions: [
          Image.asset('assets/transcript_icon.png.png'),
          SizedBox(width: 10),
        ],
      ),
      body: Center(
        child: Text('Music'),
      ),
    );
  }
}