import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMIcalculator());

class BMIcalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        cardColor: Color(0xFF1D1F33),
      ),
      home: InputPage(),
    );
  }
}
