
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Genral {
  text(var str, Color a, double size) {
    return Text(str, style: GoogleFonts.oswald(color: a, fontSize: size));
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

  menubutton(String title, String image) {
    return FlatButton(
      padding: const EdgeInsets.symmetric(vertical: 30),
      color: title == 'Clock' ? Colors.pinkAccent : Colors.transparent,
      onPressed: () {},
      child: Column(
        children: <Widget>[
          Image.asset(image,scale:11),
          spaceh(16),
          text(title, Colors.white, 14),
        ],
      ),
    );
  }
}
