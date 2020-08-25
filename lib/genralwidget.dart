import 'package:flutter/material.dart';

class Genral {
  text(var str, Color a, double size) {
    return Text(str, style: TextStyle(color: a, fontSize: size));
  }

  spaceh(double h) {
    return SizedBox(
      height: h,
    );
  }

    spacew(double w) {
    return SizedBox(
      width: w,
    );
  }

  icon(IconData a,Color b){return Icon(
                a,
               color: b,
            );}


}
