import 'package:flutter/material.dart';

class GlowText extends StatelessWidget {

  final String text;
  final TextStyle style;
  final Color glowColor;

  const GlowText({
    super.key,
    required this.text,
    required this.style,
    required this.glowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(
        color: glowColor,
        shadows: [
          Shadow(color: glowColor, blurRadius: 20),
          Shadow(color: glowColor, blurRadius: 40),
        ],
      ),
    );
  }
}