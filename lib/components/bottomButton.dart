import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String route;
  final String text;

  BottomButton({this.route, this.text});

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
          Navigator.pushNamed(context, route);
        },
        color: kPrimaryAccentColor,
      ),
    );
  }
}
