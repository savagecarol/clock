
import 'package:clock/enum/menu_info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class Genral {
  text(var str, Color a, double size) {
    return Text(str, style: GoogleFonts.oswald(color: a, fontSize: size));
  }

   textwithstyle(var str, Color a, double size,FontWeight p) {
    return Text(str, style: GoogleFonts.oswald(color: a, fontSize: size ,fontWeight: p));
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

  icon(IconData a, Color b) {
    return Icon(
      a,
      color: b,
    );
  }



}
