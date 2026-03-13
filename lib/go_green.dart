import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flame_docs/player.dart';

class GoGreen extends FlameGame {
  GoGreen({super.children});

  @override
  Future<void> onLoad() async {
    super.onLoad();

    world.add(Player(
      position: Vector2(0, 0), 
      radius: 50));
  }

  @override
  Color backgroundColor() {
    return Color.fromARGB(255, 16, 211, 20);
  }
}
