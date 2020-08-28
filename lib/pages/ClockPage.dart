import 'package:clock/clock/ClockView.dart';
import 'package:clock/homepage/HomePage.dart';
import 'package:clock/widgets/genralwidget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      alignment: Alignment.center,
      color: Color(0xFF2D2F41),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          g.text('Clock', Colors.white, t * .04),
          g.spaceh(h * .01),
          g.text(formattedTime, Colors.white, t * .05),
          g.text(formattedDate, Colors.white, t * .02),
          Container(
            child: Center(child: ClockView()),
            alignment: Alignment.center,
          ),
          g.spaceh(h * .01),
          g.text('Timezone', Colors.white, t * .04),
          g.spaceh(h * .01 / 2),
          Row(
            children: <Widget>[
              g.icon(Icons.language, Colors.white),
              g.spacew(w * .01),
              g.text(
                  'UTC' + offestsign + timezoneeString, Colors.white, t * .02),
            ],
          )
        ],
      ),
    );
  }
}
