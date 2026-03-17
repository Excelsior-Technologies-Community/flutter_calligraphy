import 'package:flutter/material.dart';
import 'dart:math';

class WaveText extends StatefulWidget {

  final String text;
  final TextStyle style;

  const WaveText({
    super.key,
    required this.text,
    required this.style,
  });

  @override
  State<WaveText> createState() => _WaveTextState();
}

class _WaveTextState extends State<WaveText>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (_, __) {

        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            widget.text.length,
                (i) {

              double offset =
                  sin(controller.value * 2 * pi + i) * 8;

              return Transform.translate(
                offset: Offset(0, offset),
                child: Text(
                  widget.text[i],
                  style: widget.style,
                ),
              );
            },
          ),
        );
      },
    );
  }
}