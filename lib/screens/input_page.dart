import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:bmi_calculator/components/iconCard.dart';
import 'package:bmi_calculator/components/incrementDecrementCard.dart';
import 'package:bmi_calculator/components/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../states.dart';

class InputPage extends StatefulWidget {
  final States state;

  InputPage({this.state});

  @override
  _InputPageState createState() => _InputPageState(state);
}

class _InputPageState extends State<InputPage> {
  States state;

  _InputPageState(this.state);

  Color maleCardColor = kCardColorInactive;
  Color femaleCardColor = kCardColorInactive;

  void genderSelectReact() {
    if (state.gender == 'Male') {
      setState(() {
        maleCardColor = kCardColorActive;
        femaleCardColor = kCardColorInactive;
      });
    } else if (state.gender == 'Female') {
      setState(() {
        femaleCardColor = kCardColorActive;
        maleCardColor = kCardColorInactive;
      });
    } else {
      femaleCardColor = kCardColorInactive;
      maleCardColor = kCardColorInactive;
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
                    setState(() {
                      state.gender = 'Male';
                    });
                  },
                ),
                ReusableCard(
                  femaleCardColor,
                  child: IconCard(FontAwesomeIcons.venus, 'FEMALE'),
                  onPress: () {
                    setState(() {
                      state.gender = 'Female';
                    });
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
                            state.height.toString(),
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
                          value: state.height.toDouble(),
                          onChanged: (value) {
                            setState(() {
                              state.height = value.toInt();
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
                  value: state.weight,
                  onDecrement: () {
                    setState(() {
                      state.weight--;
                    });
                  },
                  onIncrement: () {
                    setState(() {
                      state.weight++;
                    });
                  },
                ),
                IncrementDecrementCard(
                  title: 'AGE',
                  value: state.age,
                  onDecrement: () {
                    setState(() {
                      state.age--;
                    });
                  },
                  onIncrement: () {
                    setState(() {
                      state.age++;
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
