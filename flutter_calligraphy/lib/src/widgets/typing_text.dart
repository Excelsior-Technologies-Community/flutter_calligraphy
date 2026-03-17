import 'package:flutter/material.dart';

class TypingText extends StatefulWidget {

  final String text;
  final TextStyle style;

  const TypingText({
    super.key,
    required this.text,
    required this.style,
  });

  @override
  State<TypingText> createState() => _TypingTextState();
}

class _TypingTextState extends State<TypingText> {

  String current = "";

  @override
  void initState() {
    super.initState();
    startTyping();
  }

  startTyping() async {
    for (int i = 0; i < widget.text.length; i++) {
      await Future.delayed(
        const Duration(milliseconds: 80),
      );
      setState(() {
        current += widget.text[i];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(current, style: widget.style);
  }
}