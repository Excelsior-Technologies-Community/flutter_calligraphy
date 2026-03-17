import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CalligraphyExporter {

  /// Convert widget to image bytes
  static Future<Uint8List?> exportToImage(
      GlobalKey boundaryKey) async {

    try {

      RenderRepaintBoundary boundary =
      boundaryKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary;

      ui.Image image =
      await boundary.toImage(pixelRatio: 3);

      ByteData? byteData =
      await image.toByteData(
          format: ui.ImageByteFormat.png);

      return byteData?.buffer.asUint8List();

    } catch (e) {
      debugPrint("Export Error: $e");
      return null;
    }
  }
}