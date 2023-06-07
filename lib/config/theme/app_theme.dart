import 'package:flutter/material.dart';

const colorList = [
  Colors.black,
  Colors.blue,
  Colors.white,
  Colors.red,
  Colors.greenAccent,
  Colors.orange,
  Colors.pink,
  Colors.yellow,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be greater then 0'),
        assert(selectedColor < colorList.length,
            'Selected color must be less or equal than ${ colorList.length - 1 }');

  ThemeData getTheme() =>
      ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: colorList[selectedColor]
      );
}
