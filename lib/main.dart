import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'flutter_calligraphy.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CalligraphyController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: EditorPage());
  }
}

class EditorPage extends StatelessWidget {
  const EditorPage({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = context.watch<CalligraphyController>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
          title:Text("Flutter Calligraphy",style: TextStyle(color: Colors.white),)
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 30,),
            TextField(
              onChanged: controller.updateText,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: "Type Text",
              ),
            ),

            Expanded(
              child: Stack(
                children: const [
                  CalligraphyCanvas(),
                ],
              ),
            ),

            const FontSelector(),
          ],
        ),
      ),
    );
  }
}