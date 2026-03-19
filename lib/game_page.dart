import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int positionBonneReponse = 0;
  int score = 0;


  final AudioPlayer player = AudioPlayer();

  // Liste des images dans assets/
  final List<String> images = [
    'assets/ANANAS.jpg',
    'assets/BANANE.jpg',
    'assets/FRAISE.jpg',
    'assets/MANGUE.jpg',
    'assets/PAPAYE.jpg',
    'assets/PASTEQUES.jpg',
    'assets/POMME.jpg',
    'assets/RAISIN.jpg',
    'assets/date.jpg',
  ];

  
  void playSound(String sound) async {
    await player.play(AssetSource(sound));
  }

  void nouveauJeu() {
    setState(() {
      positionBonneReponse = Random().nextInt(9) + 1;
    });
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (t) {
      nouveauJeu();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black87,
        title: const Text(
          'Game Page',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            'Score: $score',
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Appuyez sur le cadre vert',
            style: TextStyle(fontSize: 18, color: Color(0xFF1E2B32)),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Row(
              children: [
                cadre(numeroCadre: 1),
                cadre(numeroCadre: 2),
                cadre(numeroCadre: 3),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                cadre(numeroCadre: 4),
                cadre(numeroCadre: 5),
                cadre(numeroCadre: 6),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                cadre(numeroCadre: 7),
                cadre(numeroCadre: 8),
                cadre(numeroCadre: 9),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cadre({int? numeroCadre}) {
    final int index = (numeroCadre! - 1) % images.length;

    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            if (positionBonneReponse == numeroCadre) {
              score += 10;
              playSound('win.wav'); 
            } else {
              score -= 5;
              if (score < 0) score = 0;
              playSound('lost.wav'); 
            }
            nouveauJeu();
          });
        },
        child: Container(
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: positionBonneReponse == numeroCadre
                ? Colors.green.withOpacity(0.5)
                : Colors.red.withOpacity(0.5),
            image: DecorationImage(
              image: AssetImage(images[index]),
              fit: BoxFit.cover,
            ),
            border: Border.all(color: Colors.black, width: 1),
          ),
        ),
      ),
    );
  }
}