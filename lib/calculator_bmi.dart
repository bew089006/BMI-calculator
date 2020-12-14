import 'dart:math';

class CalculatorBMI {
  CalculatorBMI({this.height, this.weight});

  final int weight;
  final int height;

  double _bmi;

  String getScoreBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResultTitle() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getResultDescription() {
    if (_bmi >= 25) {
      return 'You have a overweight body weight. Less eat and go exercise now!';
    } else if (_bmi > 18) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a overweight body weight. More eat now!';
    }
  }
}
