import 'dart:math';

class Calculator {
  final int weight;
  final int height;
  double _bmiValue;

  Calculator({this.weight, this.height});

  String calculateBMI() {
    _bmiValue = weight / pow(height / 100, 2);
    return (_bmiValue).toStringAsFixed(1);
  }

  String getresult() {
    if (_bmiValue > 25) {
      return 'OVERWEIGHT';
    } else if (_bmiValue < 18.5) {
      return 'UNDERWEIGHT';
    } else {
      return 'NORMAL';
    }
  }

  String getFeedback() {
    if (_bmiValue > 25) {
      return 'You are overweight.Maintain a balanced diet and exercise more. ';
    } else if (_bmiValue < 18.5) {
      return 'You are underweight.Eat more.';
    } else {
      return 'You are perfectly normal.Keep it up.';
    }
  }
}
