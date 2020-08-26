import 'package:clock/clock/ClockView.dart';
import 'package:clock/widgets/genralwidget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

var h, w, t;

class _HomePageState extends State<HomePage> {
  var Context;

  Genral g = new Genral();

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EEE,d MMM').format(now);
    var timezoneeString = now.timeZoneOffset.toString().split('.').first;
    var offestsign = '';
    if (!timezoneeString.startsWith('-')) offestsign = '+';
    print(timezoneeString);

    Context = context;
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    t = MediaQuery.of(context).textScaleFactor * h;
    return Scaffold(
        backgroundColor: Color(0xFF2D2F41),
        body: Row(children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              g.menubutton('clock', 'assets/clock.png'),
                  g.menubutton('alarm',
                      'assets/clock.png'),
                  g.menubutton('timer',
                      'assets/clock.png'),
                  g.menubutton('stopwatch',
                     'assets/clock.png'),
            ],
          ),
          VerticalDivider(
            color: Colors.white24,
            width: 1,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 64),
              alignment: Alignment.center,
              color: Color(0xFF2D2F41),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  g.text('Clock', Colors.white, 24.0),
                  g.spaceh(8),
                  g.text(formattedTime, Colors.white, 56),
                  g.text('Clock', Colors.white, 20),
                  ClockView(),
                  g.text(formattedDate, Colors.white, 20),
                  g.spaceh(8),
                  Row(
                    children: <Widget>[
                      g.icon(Icons.language, Colors.white),
                      g.spacew(16),
                      g.text('UTC' + offestsign + timezoneeString, Colors.white,
                          14),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}