import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onPress;
  ReusableCard(this.color, {this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          child: child,
          margin: EdgeInsets.all(12.0),
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: this.color,
          ),
        ),
      ),
    );
  }
}
