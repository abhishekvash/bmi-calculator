import 'package:bmi_calculator/components/roundIconButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import 'reusableCard.dart';

class IncrementDecrementCard extends StatelessWidget {
  final int value;
  final String title;
  final Function onIncrement;
  final Function onDecrement;

  IncrementDecrementCard(
      {this.value, this.title, this.onDecrement, this.onIncrement});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      kCardColorActive,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: kLabelTextStyleRegular,
          ),
          Text(
            value.toString(),
            style: kLabelTextStyleBold,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                fill: kSliderColorInactive,
                child: Icon(Icons.remove),
                onPressed: onDecrement,
              ),
              SizedBox(
                width: 20.0,
              ),
              RoundIconButton(
                fill: kSliderColorInactive,
                child: Icon(Icons.add),
                onPressed: onIncrement,
              ),
            ],
          )
        ],
      ),
    );
  }
}
