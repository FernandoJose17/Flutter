import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF6750A4);

const List<Color> _colorThemes = [
_customColor,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
];

class AppTheme {
   final int selectedColor;

  AppTheme({
    this.selectedColor = 0}
    ):assert(selectedColor>=0,
    'colors must be between 0 and ${_colorThemes.length }');

  ThemeData theme(){
      return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: _colorThemes[5],
    );
  }

}