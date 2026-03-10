import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(GameWidget(game: FlameGame(world: MyWorld())));
}

class Player extends SpriteComponent with TapCallbacks {
  Player({super.position})
    : super(size: Vector2.all(200), anchor: Anchor.center);

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('JUMP.png');
    if (sprite != null) {
      print('Sprite loaded successfully');
    } else {
      print('Failed to load sprite');
    }
  }

  @override
  void onTapUp(TapUpEvent info) {
    size += Vector2.all(50);
  }
}

class MyWorld extends World {
  @override
  Future<void> onLoad() async {
    add(Player(position: Vector2(0, 0)));
  }
}
