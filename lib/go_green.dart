import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_docs/constants.dart';
import 'package:flame_docs/player.dart';

class GoGreen extends FlameGame {
  GoGreen() 
    : super(
      camera: CameraComponent.withFixedResolution(
        width: gameWidth,
        height: gameHeight,
      )
    );

  @override
  Future<void> onLoad() async {
    super.onLoad();

    world.add(Player(
        position: Vector2(-(gameWidth / 4), 0), 
        radius: gameWidth / 4
      )
    );

    world.add(Player(
      position: Vector2(0, 100), 
      radius: 20,
      color: Color.fromARGB(255, 16, 29, 211)
    ));
  }

  @override
  Color backgroundColor() {
    return Color.fromARGB(255, 104, 211, 16);
  }
}
