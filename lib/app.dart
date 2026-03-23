import 'package:flame/game.dart';
import 'package:flame_docs/constants.dart';
import 'package:flame_docs/game/go_green_game.dart';
import 'package:flutter/material.dart';

class GameApp extends StatefulWidget {
  const GameApp({super.key});

  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  late final GoGreen game;

  @override
  void initState() {
    super.initState();

    game = GoGreen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Color.fromRGBO(232, 193, 19, 1)

      ),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FittedBox(
              child: SizedBox(
                width: gameWidth,
                height: gameHeight,
                child: GameWidget(game: game)
              )
            )
          )
        ) ,
      ) 
    );
  }
}
