import 'package:flame/flame.dart';
import 'package:flame_docs/game_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  runApp(const GameApp());
}
