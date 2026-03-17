import 'package:flutter/material.dart';

class CalligraphyStyle {

  String fontFamily;
  Color color;
  bool glow;
  bool stroke;
  bool wave;
  bool shadow;
  bool boldOutline;
  bool typing;
  List<Color>? gradient;

  CalligraphyStyle({
    required this.fontFamily,
    this.color = Colors.black,
    this.glow = false,
    this.stroke = false,
    this.wave = false,
    this.shadow = false,
    this.boldOutline = false,
    this.typing = false,
    this.gradient,
  });
}