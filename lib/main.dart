import 'package:flutter/material.dart';
import 'package:quiz/home_page.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: HomePage(),
    );
  }
}
