import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    startMusic();
  }

  void startMusic() async {
    await player.setReleaseMode(ReleaseMode.loop);
    await player.play(AssetSource('sound.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            "666",
            style: TextStyle(
              color: Colors.red,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}