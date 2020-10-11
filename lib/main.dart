import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'input_page.dart';
import 'constants.dart';
import 'results_page.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(BMICalculator());
  });
}

class BMICalculator extends StatelessWidget {
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
                builder: (context) => InputPage(), settings: settings);
            break;
          case '/results':
            return CupertinoPageRoute(
                builder: (context) => ResultsPage(), settings: settings);
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
