import 'package:bmi_app/const_data.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app/custom widgets/card_widget.dart';
import 'package:bmi_app/custom widgets/bottom_button_widget.dart';

class ResultPage extends StatelessWidget {
  final String bmiValueText;
  final String resultText;
  final String feedbackText;

  ResultPage(
      {@required this.bmiValueText,
      @required this.resultText,
      @required this.feedbackText});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI APP',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF090C22),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI APP'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  'Result',
                  style: kResultTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: CardWidget(
                cardColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Center(
                      child: Text(
                        resultText,
                        style: kResultTextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        bmiValueText,
                        style: kBMIValueTextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        feedbackText,
                        textAlign: TextAlign.center,
                        style: kResultDescriptionStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButtonWidget(
              buttonLabel: 'RE-CALCULATE',
              onTapFunction: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
