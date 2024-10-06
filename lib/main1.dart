import 'package:flutter/material.dart';
import 'package:whats_app/game.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
         title: "Whats App",
          home: Game());
  }

  
}