import 'package:clock/widgets/genralwidget.dart';
import 'package:flutter/material.dart';
import 'package:clock/enum/data.dart';
import 'package:clock/enum/alarm_info.dart';

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  Genral g = new Genral();
  @override
  Widget build(BuildContext context) {
    return Container(
      
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            g.text('Alarm', Colors.white, 25),
            Expanded(
              child: ListView(
                children: alarms.map((alarm) {
                  return Container(
                    margin : const EdgeInsets.only(bottom:20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: alarm.color,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),     
                        boxShadow:[ BoxShadow(
                          color:alarm.color.last.withOpacity(0.3),
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 0)
                        )]
                        
                        ),
                    child: Column(
                      children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                               g.spacew(8),
                                g.icon(Icons.label, Colors.white ,24),
                            g.spacew(8),
                            g.text('office', Colors.white, 24),
                            ],
                          ),
                           Switch(
                          onChanged: (bool value) {},
                          value: true,
                          activeColor: Colors.white,
                          focusColor: Colors.black,
                        )
                        ],
                      ),

                Row(
                  children: <Widget>[
                     g.spacew(8),
                      g.text('Mon-Fri', Colors.white, 16)
                  ],
                ),

         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
                      Row(
                      children: <Widget> [  g.spacew(8),
                        
                          g.textwithstyle('7:00 AM', Colors.white, 18,FontWeight.w400),
                      ],
                  ) ,
                    Row(
                      children: <Widget> [ 
                        
                          g.icon(Icons.keyboard_arrow_down,Colors.white,24),
                           g.spacew(8),
                      ],
                  ) ,
                    
                      
                   
           ],
         ),
                 






                       
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ));
  }
}
