import 'package:flutter/material.dart';
import 'package:bmi_app/const_data.dart';

class CardContentWidget extends StatelessWidget {
  final String label;
  final IconData cardIcon;
  CardContentWidget({this.label, this.cardIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 90.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
