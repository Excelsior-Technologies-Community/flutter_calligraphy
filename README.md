## 🎯 flutter_calligraphy
```
flutter_calligraphy is a powerful reusable Flutter calligraphy text editor library that allows developers to create dynamic stylish typography UI with drag, scale, rotate and animated text effects.

It helps developers easily build calligraphy editors, greeting card makers, poster creators and typography based creative applications without writing complex gesture handling, animation logic or custom painter code.

You can dynamically change fonts, apply multiple calligraphy effects and export the designed text as image.
```

----

## ✨ Feature Preview
```
- ✍️ Dynamic calligraphy font switching
- 🌊 Wave animated text effect
- ⌨️ Typing animation calligraphy
- 🌟 Glow text effect
- 🎨 Gradient calligraphy text
- 🖤 Shadow stylish typography
- 🔳 Stroke / outline text
- 🅾️ Bold outline effect
- 🧲 Drag text anywhere on canvas
- 🔍 Pinch to zoom text
- 🔄 Rotate text gesture support
- 🖼 Export calligraphy design as PNG image
- 🎯 Clean architecture (Controller + Widgets + Utils)
- 📦 Lightweight and reusable
- 🌐 Works on Android, iOS, Web & Desktop
```

----

## 📦 Installation

Add dependency in your pubspec.yaml.
```
dependencies:
  flutter_calligraphy:
    path: https://github.com/Excelsior-Technologies-Community/flutter_calligraphy/tree/stage
```
Then run:
```
flutter pub get
```

----

## 🎬 Preview

https://github.com/user-attachments/assets/4d46b112-6003-4bad-85bd-45ea57c93ad6

----

## 🗂 File Structure
```
flutter_calligraphy/
│
├─ lib/
│ ├─ flutter_calligraphy.dart
│ │ // Main export file
│ │
│ ├─ src/
│ │ ├─ controller/
│ │ │ └─ calligraphy_controller.dart
│ │ │ // Handles text state, gesture updates
│ │ │
│ │ ├─ model/
│ │ │ └─ calligraphy_style.dart
│ │ │ // Defines font + effect configuration
│ │ │
│ │ ├─ widgets/
│ │ │ ├─ calligraphy_canvas.dart
│ │ │ │ // Main draggable editor canvas
│ │ │ ├─ font_selector.dart
│ │ │ │ // Calligraphy style selector UI
│ │ │ ├─ gradient_text.dart
│ │ │ ├─ glow_text.dart
│ │ │ ├─ stroke_text.dart
│ │ │ ├─ wave_text.dart
│ │ │ ├─ shadow_text.dart
│ │ │ ├─ bold_outline_text.dart
│ │ │ └─ typing_text.dart
│ │ │ // Various calligraphy effect widgets
│ │ │
│ │ └─ utils/
│ │   └─ export_image.dart
│ │   // Export canvas to PNG
│ │
│ └─ main.dart
│ // Demo calligraphy editor app
│
├─ README.md
├─ LICENSE
└─ pubspec.yaml
```

----

##🚀 How To Use

1️⃣ Import Package 
```
import 'package:flutter_calligraphy/flutter_calligraphy.dart';
```
2️⃣ Setup Controller
```
ChangeNotifierProvider(
  create: (_) => CalligraphyController(),
  child: MyApp(),
)
```
3️⃣ Add Calligraphy Canvas
```
Stack(
  children: [
    CalligraphyCanvas(),
  ],
)
```
4️⃣ Add Style Selector
```
FontSelector()
```

-----

## 🎨 Example Usage
```
TextField(
  onChanged: controller.updateText,
)

Expanded(
  child: Stack(
    children: [
      CalligraphyCanvas(),
    ],
  ),
)

FontSelector()
```

----

## ⚙️ Calligraphy Features

| Feature       | Description                |
| ------------- | -------------------------- |
| Drag Text     | Move text anywhere         |
| Scale Text    | Pinch zoom                 |
| Rotate Text   | Two finger rotation        |
| Wave Effect   | Animated typography        |
| Typing Effect | Letter by letter animation |
| Glow Effect   | Neon style text            |
| Gradient      | Multi color typography     |
| Stroke        | Outline border             |
| Shadow        | Stylish depth              |
| Export        | Save design as image       |

----

## 📄 MIT License
```
Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files to deal in the Software
without restriction.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
```




