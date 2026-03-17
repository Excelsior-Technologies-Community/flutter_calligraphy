import 'package:flutter/material.dart';

class ShadowText extends StatelessWidget {

  final String text;
  final TextStyle style;

  const ShadowText({
    super.key,
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(
        shadows: const [
          Shadow(
            offset: Offset(4,4),
            blurRadius: 6,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}