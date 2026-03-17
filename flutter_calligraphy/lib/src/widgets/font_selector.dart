import 'package:flutter/material.dart';
import 'package:flutter_calligraphy/flutter_calligraphy.dart';
import 'package:provider/provider.dart';


class FontSelector extends StatelessWidget {
  const FontSelector({super.key});

  @override
  Widget build(BuildContext context) {
    List<CalligraphyStyle> styles = [

      /// Normal
      CalligraphyStyle(
        fontFamily: "GreatVibes",
      ),
      /// Gradient Style
      CalligraphyStyle(
        fontFamily: "GreatVibes",
        gradient: [Colors.purple, Colors.pink],
      ),

      /// Glow Style
      CalligraphyStyle(
        fontFamily: "Pacifico",
        glow: true,
        color: Colors.blue,
      ),

      /// Stroke Style
      CalligraphyStyle(
        fontFamily: "Roboto",
        stroke: true,
      ),

      /// Wave Style
      CalligraphyStyle(
        fontFamily: "Pacifico",
        wave: true,
      ),

      /// Shadow Style
      CalligraphyStyle(
        fontFamily: "DancingScript",
        shadow: true,
      ),

      /// Typing Style
      CalligraphyStyle(
        fontFamily: "Roboto",
        typing: true,
      ),


      /// Bold Outline
      CalligraphyStyle(
        fontFamily: "DancingScript",
        boldOutline: true,
      ),
    ];

    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: styles.length,
        itemBuilder: (_, i) {

          return GestureDetector(
            onTap: () {
              context.read<CalligraphyController>()
                  .updateStyle(styles[i]);
            },
            child: Container(
              width: 80,
              margin: const EdgeInsets.all(8),
              color: Colors.grey.shade200,
              child: Center(
                child: Text(
                  "Aa",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: styles[i].fontFamily,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}