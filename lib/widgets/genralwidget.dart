

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Genral {
  text(var str, Color color, double size) {
    return Text(str, style: GoogleFonts.oswald(color: color, fontSize: size));
  }

   textwithstyle(var str, Color a, double size,FontWeight p) {
    return Text(str, style: GoogleFonts.exo(color: a, fontSize: size ,fontWeight: p));
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

  icon(IconData icon, Color color,double size) {
    return Icon(
      icon,
      color: color,
      size : size,
    );
  }



}
