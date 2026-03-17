import 'package:flutter/material.dart';

import 'package:flutter_calligraphy/flutter_calligraphy.dart';


class CalligraphyController extends ChangeNotifier {

  String text = "Hello";
  Offset position = const Offset(120, 200);
  double scale = 1;
  double rotation = 0;
  double fontSize = 50;

  CalligraphyStyle style =
  CalligraphyStyle(fontFamily: "Roboto");

  void updateText(String t) {
    text = t;
    notifyListeners();
  }

  void updateStyle(CalligraphyStyle s) {
    style = s;
    notifyListeners();
  }

  void updatePosition(Offset p) {
    position = p;
    notifyListeners();
  }

  void updateScale(double s) {
    scale = s;
    notifyListeners();
  }

  void updateRotation(double r) {
    rotation = r;
    notifyListeners();
  }
}