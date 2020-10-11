import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusableCard.dart';

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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Text(
                    'RECALCULATE BMI',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                color: kPrimaryAccentColor,
              ),
            )
          ],
        ));
  }
}
