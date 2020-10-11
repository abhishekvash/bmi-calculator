import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'screens/input_page.dart';
import 'constants.dart';
import 'screens/results_page.dart';
import 'package:flutter/services.dart';
import 'states.dart';

void main() {
  States state = States();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(BMICalculator(
      state: state,
    ));
  });
}

class BMICalculator extends StatelessWidget {
  final States state;

  BMICalculator({this.state});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryThemeColor,
        scaffoldBackgroundColor: kPrimaryThemeColor,
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return CupertinoPageRoute(
                builder: (context) => InputPage(state: state), settings: settings);
            break;
          case '/results':
            return CupertinoPageRoute(
                builder: (context) => ResultsPage(state: state), settings: settings);
            break;
          default:
            return null;
        }
      },
    );
  }
}

class SlideRoute extends CupertinoPageRoute {
  SlideRoute(Widget page) : super(builder: (BuildContext context) => page);
}
