import 'package:flutter/material.dart';
import 'contants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required IconData this.icon, @required String this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: kTextStyle,
        ),
      ],
    );
  }
}
