import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:bmi_calculator/components/reusableCard.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../states.dart';
import '../brain.dart';

class ResultsPage extends StatelessWidget {
  final States state;
  ResultsPage({this.state});

  @override
  Widget build(BuildContext context) {
    final Brain brain = Brain(height: state.height, weight: state.weight);
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
                    brain.getResult(),
                    style: brain.getResultColor(),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    brain.getBMI(),
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    brain.getHelper(),
                    style: kBMIHelperTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            BottomButton(
              route: '/',
              text: 'RECALCULATE BMI',
              state: state,
            )
          ],
        ));
  }
}
