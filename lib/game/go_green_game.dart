import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_docs/constants.dart';
import 'package:flame_docs/game/go_green_world.dart';


class GoGreenGame extends FlameGame {
  GoGreenGame() 
    : super(
      world: GoGreenWorld(),
      camera: CameraComponent.withFixedResolution(
        width: gameWidth,
        height: gameHeight,
      )
    );


  @override
  Color backgroundColor() {
    return Color.fromARGB(255, 104, 211, 16);
  }
}
