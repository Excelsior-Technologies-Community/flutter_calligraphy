import 'package:flutter/material.dart';

class BoldOutlineText extends StatelessWidget {

  final String text;
  final TextStyle style;

  const BoldOutlineText({
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
              ..strokeWidth = 6
              ..color = Colors.black,
          ),
        ),
        Text(text, style: style),
      ],
    );
  }
}