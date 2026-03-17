import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {

  final String text;
  final TextStyle style;
  final List<Color> colors;

  const GradientText({
    super.key,
    required this.text,
    required this.style,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) =>
          LinearGradient(colors: colors).createShader(rect),
      child: Text(
        text,
        style: style.copyWith(color: Colors.white),
      ),
    );
  }
}