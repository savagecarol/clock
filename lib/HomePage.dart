import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

var h, w, t;

class _HomePageState extends State<HomePage> {
  var Context;

  @override
  Widget build(BuildContext context) {
    Context = context;
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    t = MediaQuery.of(context).textScaleFactor * h;
    return Scaffold(
        body: Container(
      color: Color(0xFF2D2F41),


      
    ));
  }
}
