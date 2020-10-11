import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Color fill;
  final Widget child;
  final Function onPressed;
  RoundIconButton({this.fill, this.child, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: child,
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: fill,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
    );
  }
}
