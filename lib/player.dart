import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_docs/constants.dart';

class Player extends SpriteComponent {
  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load("bottle.png");

    size = Vector2.all(100);
    position = Vector2(0, -(gameHeight / 2));
    anchor = Anchor.topCenter;
  }

  @override
  void update(double dt) {
    super.update(dt);

    double newY = position.y + (dt * 400);

  

    if (newY >= (gameHeight / 2)) {
      newY = -(gameHeight / 2);
    }
    position.y = newY;
  }
}
