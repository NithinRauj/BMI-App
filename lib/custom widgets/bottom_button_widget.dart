import 'package:flutter/material.dart';
import 'package:bmi_app/const_data.dart';

class BottomButtonWidget extends StatelessWidget {
  final String buttonLabel;
  final Function onTapFunction;
  BottomButtonWidget({this.buttonLabel, this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        child: Center(
          child: Text(
            buttonLabel,
            style: kBottomButtonTextStyle,
          ),
        ),
        color: kBottomButtonColor,
        width: double.infinity,
        height: kBottomButtonHeight,
        margin: EdgeInsets.only(top: 12.0),
      ),
    );
  }
}
