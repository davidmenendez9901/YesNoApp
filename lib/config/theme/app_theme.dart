
import 'package:flutter/material.dart';


const Color _customColor =   Color(0xFF345678);
 const List<Color> _customTheme = [
  _customColor,
  Colors.purple,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.teal
  ];
class AppTheme{
AppTheme({  
  this.initialColor = 4,
  }) : assert(initialColor >= 0 && initialColor<_customTheme.length, 'Colors must be between 0 and $_customTheme');

final int initialColor ;
 ThemeData currentTheme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _customTheme[initialColor],
    );
  }
}