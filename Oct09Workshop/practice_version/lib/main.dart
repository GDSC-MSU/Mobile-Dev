import 'package:flutter/material.dart';

import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Color.fromARGB(255, 32, 33, 36),
          selectionColor: Color.fromARGB(255, 32, 33, 36),
          selectionHandleColor: Color.fromARGB(255, 32, 33, 36),
        ),
      ),
      home: HomePage(),
    );
  }
}
