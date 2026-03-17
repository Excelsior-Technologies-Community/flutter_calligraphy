import 'package:flutter/material.dart';

class StrokeText extends StatelessWidget {

  final String text;
  final TextStyle style;

  const StrokeText({
    super.key,
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: style.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 3
              ..color = Colors.black,
          ),
        ),
        Text(text, style: style),
      ],
    );
  }
}