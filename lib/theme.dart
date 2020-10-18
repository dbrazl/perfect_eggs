import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = Color(0xFFACACAC);
const accentColor = Color(0xff0e918c);
const buttonColor = Color(0xff424242);

ThemeData theme() {
  return ThemeData(
    primaryColor: primaryColor,
    accentColor: accentColor,
    brightness: brightness,
    buttonColor: buttonColor,
    textTheme: TextTheme(
      body1: TextStyle(
        fontFamily: "Roboto",
      ),
      body2: TextStyle(
        fontFamily: "Roboto",
      ),
      display1: TextStyle(
        fontFamily: "Roboto",
      ),
      display2: TextStyle(
        fontFamily: "Roboto",
      ),
      display3: TextStyle(
        fontFamily: "Roboto",
      ),
      display4: TextStyle(
        fontFamily: "Roboto",
      ),
      caption: TextStyle(
        fontFamily: "Roboto",
      ),
      title: TextStyle(
        fontFamily: "Roboto",
      ),
      subtitle: TextStyle(
        fontFamily: "Roboto",
      ),
      button: TextStyle(
        fontFamily: "Roboto",
      ),
      headline: TextStyle(
        fontFamily: "Roboto",
      ),
    ),
  );
}
