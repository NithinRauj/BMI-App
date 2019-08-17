import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, @required this.onPressedFunction});

  final IconData icon;
  final Function onPressedFunction;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressedFunction,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      elevation: 15.0,
      fillColor: Colors.pink[400],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
