import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconCard extends StatelessWidget {
  final IconData icon;
  final String text;

  IconCard(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          '$text',
          style: kLabelTextStyleRegular,
        )
      ],
    );
  }
}
