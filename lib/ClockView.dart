import 'package:clock/ClockPainter.dart';
import 'package:flutter/material.dart';

class ClockView extends StatefulWidget {


  @override
  _ClockViewState createState() => _ClockViewState();
}

class _ClockViewState extends State<ClockView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300 ,
        height: 300,
        child: CustomPaint(
          painter: ClockPainter(),
        ),
    );
  }
}