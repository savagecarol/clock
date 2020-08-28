import 'package:clock/widgets/genralwidget.dart';
import 'package:flutter/material.dart';
class AlarmPage extends StatefulWidget {
 

  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
 
 Genral g=new Genral();
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           g.textwithstyle('Alarm',Colors.white,22,FontWeight.w700)

         ],
       )
    );
  }
}