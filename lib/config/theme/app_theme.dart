import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorTheme = [
  _customColor,
  Colors.indigo,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor <= _colorTheme.length,
            'Colors must be between 0 ond ${_colorTheme.length}');

  ThemeData theme() {
    return ThemeData(
        colorSchemeSeed: _colorTheme[selectedColor],
        brightness: Brightness.dark);
  }
}
