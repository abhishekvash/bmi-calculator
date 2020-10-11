import 'package:flutter/material.dart';
import 'dart:math';
import 'constants.dart';

class Brain {
  final int height;
  final int weight;
  double _bmi;
  Brain({@required this.height, @required this.weight}) {
    print(this.height);
    _bmi = (weight / pow(height / 100, 2));
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getHelper() {
    if (_bmi >= 25.0) {
      return 'Oops! Your BMI is on the higher side. Try to get some exercise!';
    } else if (_bmi >= 18.5) {
      return 'Your BMI is just right! Keep it up!';
    } else {
      return 'Oops! Better eat more to raise that BMI to optimum levels';
    }
  }

  TextStyle getResultColor() {
    if (_bmi >= 25) {
      return kResultOverweight;
    } else if (_bmi >= 18.5) {
      return kResultNormal;
    } else {
      return kResultUnderweight;
    }
  }
}
