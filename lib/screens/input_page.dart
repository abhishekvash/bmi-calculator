import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:bmi_calculator/components/iconCard.dart';
import 'package:bmi_calculator/components/incrementDecrementCard.dart';
import 'package:bmi_calculator/components/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kCardColorInactive;
  Color femaleCardColor = kCardColorInactive;
  int height = 180;
  int age = 21;
  int weight = 75;

  void genderSelectReact(String gender) {
    if (gender == 'Male') {
      setState(() {
        maleCardColor = kCardColorActive;
        femaleCardColor = kCardColorInactive;
      });
    } else {
      setState(() {
        femaleCardColor = kCardColorActive;
        maleCardColor = kCardColorInactive;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                ReusableCard(
                  maleCardColor,
                  child: IconCard(FontAwesomeIcons.mars, 'MALE'),
                  onPress: () {
                    genderSelectReact('Male');
                  },
                ),
                ReusableCard(
                  femaleCardColor,
                  child: IconCard(FontAwesomeIcons.venus, 'FEMALE'),
                  onPress: () {
                    genderSelectReact('Female');
                  },
                )
              ],
            ),
            Row(
              children: [
                ReusableCard(
                  kCardColorActive,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: kLabelTextStyleRegular,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            height.toString(),
                            style: kLabelTextStyleBold,
                          ),
                          Text(
                            'cm',
                            style: kLabelTextStyleSmall,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: kSliderColorInactive,
                            thumbColor: kPrimaryAccentColor,
                            overlayColor: kPrimaryAccentColor.withAlpha(70),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            trackHeight: 1.0,
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 25.0)),
                        child: Slider(
                          value: height.toDouble(),
                          onChanged: (value) {
                            setState(() {
                              height = value.toInt();
                            });
                          },
                          min: 45,
                          max: 250,
                          // activeColor: kPrimaryAccentColor,
                          // inactiveColor: kSliderColorInactive,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                IncrementDecrementCard(
                  title: 'WEIGHT',
                  value: weight,
                  onDecrement: () {
                    setState(() {
                      weight--;
                    });
                  },
                  onIncrement: () {
                    setState(() {
                      weight++;
                    });
                  },
                ),
                IncrementDecrementCard(
                  title: 'AGE',
                  value: age,
                  onDecrement: () {
                    setState(() {
                      age--;
                    });
                  },
                  onIncrement: () {
                    setState(() {
                      age++;
                    });
                  },
                ),
              ],
            ),
            BottomButton(route: '/results', text: 'CALCULATE BMI')
          ],
        ),
      ),
    );
  }
}
