import 'package:flame/components.dart';
import 'package:flame_docs/constants.dart';
import 'package:flame_docs/game/go_green_game.dart';
import 'package:flame_docs/player.dart';
import 'package:flutter/material.dart';

class GoGreenWorld extends World with HasGameReference<GoGreenGame> {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    add(Player());
    
  }
}
