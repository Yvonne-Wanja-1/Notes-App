    import 'package:flutter/material.dart';
import 'package:note_app/screens/home_screen.dart';


void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData(
  brightness: Brightness.dark, // Enables dark mode
),

      home: HomeScreen()
    );
  }
}
