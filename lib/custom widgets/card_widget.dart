import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  final Function gestureDetectorFunction;
  CardWidget(
      {@required this.cardColor,
      @required this.cardChild,
      this.gestureDetectorFunction});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureDetectorFunction,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
