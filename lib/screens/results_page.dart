import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:bmi_calculator/components/reusableCard.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                'YOUR RESULTS',
                style: kTitleTextStyle,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ReusableCard(
              kCardColorActive,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'NORMAL',
                    style: kResultNormal,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '22.3',
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Your BMI is just right! Keep it up!',
                    style: kBMIHelperTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            BottomButton(route: '/', text: 'RECALCULATE BMI')
          ],
        ));
  }
}
