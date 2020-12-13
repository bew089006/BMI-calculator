import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({this.color, this.cardChild, this.onPress});

  final Color color;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: cardChild,
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
