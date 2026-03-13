import 'dart:ui';

import 'package:flame/components.dart';

class Player extends CircleComponent{
  Player({
    required super.position,
    required double radius,
    Color color = const Color.fromARGB(255, 246, 242, 242)
  }) : super(
    anchor: Anchor.center,
    radius: radius, 
    paint: Paint()
    ..color = color
    ..style = PaintingStyle.fill,

    );
}