

import 'package:flutter/material.dart';

import 'screens/character_create_form_stepper.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CharacterCreationForm(),
      theme: ThemeData(
        primaryColor: Colors.cyan.shade800,
        fontFamily: 'Montserrat',
        iconTheme: const IconThemeData(color: Colors.lightBlueAccent),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Montserrat',
            color: Colors.black54,
          ),
          button: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Montserrat',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


