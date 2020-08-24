import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ClockPainter extends CustomPainter {
  var dateTime = DateTime.now();
  

  @override
  void paint(Canvas canvas, Size size) {
    var centerx = size.width / 2;
    var centery = size.height / 2;
    var center = Offset(centerx, centery);
    var radius = min(centerx, centery);

    var fillBrush = Paint()..color = Color(0xFF444974);

    var outlineBrush = Paint()
      ..color = Color(0xFFEAECFF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 16;

    var centerFillBrush = Paint()..color = Color(0xFFEAECFF);

    var secondHandBrush = Paint()
      ..color = Colors.orange[300]
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8;

    var minHandBrush = Paint()
      ..shader = RadialGradient(colors: [Color(0xFF748EF6), Color(0xFF77DDFF)])
          .createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 16;

    var hourHandBrush = Paint()
      ..shader = RadialGradient(colors: [Color(0xFFEA74AB), Color(0xFFC279FB)])
          .createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 16;

    canvas.drawCircle(center, radius - 40, fillBrush);
    canvas.drawCircle(center, radius - 40, outlineBrush);

    var hourHandx = centerx + 60 * cos(270 * pi / 180);
    var hourHandy = centery + 60 * sin(270 * pi / 180);
    canvas.drawLine(center, Offset(hourHandx, hourHandy), hourHandBrush);

    var minHandx = centerx + 80 * cos(90 * pi / 180);
    var minHandy = centery + 80 * sin(90 * pi / 180);
    canvas.drawLine(center, Offset(minHandx, minHandy), minHandBrush);

    var secHandx = centerx + 80 * cos(180 * pi / 180);
    var secHandy = centery + 80 * sin(180 * pi / 180);
    canvas.drawLine(center, Offset(secHandx, secHandy), secondHandBrush);

    canvas.drawCircle(center, 16, centerFillBrush);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
