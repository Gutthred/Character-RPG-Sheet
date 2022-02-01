import 'package:flutter/material.dart';

class Styles {}

TextField usernameField(String text) {
  final String label = text;

  return TextField(
    keyboardType: TextInputType.text,
    style: myTextFieldStyle(),
    decoration: InputDecoration(
      labelText: label.toString(),
      border: myInputBorder(),
      enabledBorder: myInputBorder(),
      focusedBorder: myFocusBorder(),
      prefixIcon: Icon(
        Icons.person,
        color: Colors.cyan.shade800,
      ),
      labelStyle: TextStyle(
        color: Colors.cyan.shade800,
      ),
    ),
  );
}

TextField passwordField(String text) {
  final String label = text;

  return TextField(
    obscureText: true,
    keyboardType: TextInputType.text,
    style: myTextFieldStyle(),
    decoration: InputDecoration(
      labelText: label.toString(),
      border: myInputBorder(),
      enabledBorder: myInputBorder(),
      focusedBorder: myFocusBorder(),
      prefixIcon: Icon(
        Icons.lock,
        color: Colors.cyan.shade800,
      ),
      labelStyle: TextStyle(
        color: Colors.cyan.shade800,
      ),
    ),
  );
}

TextStyle myTextStyleTextField() {
  return TextStyle(
    fontSize: 16.0,
    fontFamily: 'Montserrat',
    color: Colors.cyan.shade800,
    fontWeight: FontWeight.bold,
  );
}

TextStyle myTextFieldStyle() {
  return const TextStyle(
    fontSize: 16.0,
    fontFamily: 'Montserrat',
    color: Colors.black54,
    fontWeight: FontWeight.bold,
  );
}

OutlineInputBorder myInputBorder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
      //Outline border type for TextField
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Colors.cyan.shade900,
        width: 3,
      ));
}

OutlineInputBorder myFocusBorder() {
  return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Colors.cyan.shade900,
        width: 3,
      ));
}

//BUTTON BORDER AND STYLES
RoundedRectangleBorder buttonBorder() {
  return const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)));
}

BorderSide buttonBorderColor() {
  return BorderSide(color: Colors.cyan.shade900, width: 2);
}

Size buttonSize() {
  return const Size(double.infinity, 55);
}

Size homeButtonSize() {
  return const Size(320, 64);
}

TextStyle dropDownListTextStyle() {
  return const TextStyle(
    fontSize: 14.0,
    fontFamily: 'Montserrat',
    color: Colors.black54,
    letterSpacing: 1.0,
  );
}



/*TEXT STYLES, BUTTONS AND METHODS used into the CHARACTER_PAGE.DART*/

TextStyle cpTextStyle() {
  return TextStyle(
    fontSize: 16.0,
    fontFamily: 'Montserrat',
    color: Colors.cyan.shade800,
    fontWeight: FontWeight.bold,
  );
}

TextStyle cpTextFieldStyle() {
  return const TextStyle(
    fontSize: 16.0,
    fontFamily: 'Montserrat',
    color: Colors.black54,
  );
}

TextStyle cpAppbarTextFieldStyle() {
  return const TextStyle(
    fontSize: 24.0,
    fontFamily: 'Montserrat',
    color: Colors.white,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
  );
}

OutlineInputBorder cpInputBorder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
    //Outline border type for TextField
      borderRadius: const BorderRadius.all(Radius.circular(40)),
      borderSide: BorderSide(
        color: Colors.cyan.shade900.withOpacity(0.7),
        width: 0.5,
      ));
}

OutlineInputBorder cpFocusBorder() {
  return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Colors.cyan.shade900,
        width: 3,
      ));
}

RoundedRectangleBorder cpButtonBorder() {
  return const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)));
}

BorderSide cpButtonBorderColor() {
  return BorderSide(color: Colors.cyan.shade900, width: 0.1);
}

Size cpButtonSize() {
  return const Size(double.infinity, 55);
}

Size cpHomeButtonSize() {
  return const Size(320, 64);
}

TextStyle cpButtonCharactersTextStyle() {
  return const TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    color: Colors.white,
    letterSpacing: 1.0,
  );
}
