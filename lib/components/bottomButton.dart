import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../states.dart';

class BottomButton extends StatelessWidget {
  final States state;
  final String route;
  final String text;

  BottomButton({this.route, this.text, this.state});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: FlatButton(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
          ),
        ),
        onPressed: () {
          if (route == '/') {
            state.age = 21;
            state.height = 180;
            state.weight = 75;
            state.gender = null;
            Navigator.pop(context);
          }
          Navigator.pushNamed(context, route);
        },
        color: kPrimaryAccentColor,
      ),
    );
  }
}
