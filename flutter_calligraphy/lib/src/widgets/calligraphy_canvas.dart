import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/calligraphy_controller.dart';
import 'gradient_text.dart';
import 'glow_text.dart';
import 'stroke_text.dart';
import 'wave_text.dart';
import 'shadow_text.dart';
import 'bold_outline_text.dart';
import 'typing_text.dart';

class CalligraphyCanvas extends StatelessWidget {
  const CalligraphyCanvas({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CalligraphyController>(
      builder: (_, c, __) {

        /// ⭐ BASE STYLE (VERY IMPORTANT)
        TextStyle baseStyle = TextStyle(
          fontSize: c.fontSize,
          fontFamily: c.style.fontFamily,
          color: c.style.color,
        );

        Widget child = Text(c.text, style: baseStyle);

        /// ⭐ ORDER MATTERS (Layer Effects)

        /// Typing should be first
        if (c.style.typing == true) {
          child = TypingText(
            text: c.text,
            style: baseStyle,
          );
        }

        /// Stroke
        if (c.style.stroke == true) {
          child = StrokeText(
            text: c.text,
            style: baseStyle,
          );
        }

        /// Gradient
        if (c.style.gradient != null) {
          child = GradientText(
            text: c.text,
            style: baseStyle,
            colors: c.style.gradient!,
          );
        }

        /// Glow
        if (c.style.glow == true) {
          child = GlowText(
            text: c.text,
            style: baseStyle,
            glowColor: c.style.color,
          );
        }

        /// Wave animation
        if (c.style.wave == true) {
          child = WaveText(
            text: c.text,
            style: baseStyle,
          );
        }

        /// Shadow
        if (c.style.shadow == true) {
          child = ShadowText(
            text: c.text,
            style: baseStyle,
          );
        }

        /// Bold Outline LAST (top effect)
        if (c.style.boldOutline == true) {
          child = BoldOutlineText(
            text: c.text,
            style: baseStyle,
          );
        }

        /// ⭐ DRAG + SCALE + ROTATE ENGINE
        return Positioned(
          left: c.position.dx,
          top: c.position.dy,
          child: GestureDetector(
            onScaleUpdate: (details) {

              /// DRAG
              c.updatePosition(
                c.position + details.focalPointDelta,
              );

              /// SCALE
              c.updateScale(details.scale);

              /// ROTATE
              c.updateRotation(details.rotation);
            },
            child: Transform.rotate(
              angle: c.rotation,
              child: Transform.scale(
                scale: c.scale,
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}