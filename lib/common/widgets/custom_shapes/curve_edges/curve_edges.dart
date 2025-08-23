import 'package:flutter/material.dart';

class ACustomCurveEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstLeftCurve = Offset(0, size.height - 20);
    final firstRightCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(firstLeftCurve.dx, firstLeftCurve.dy,
        firstRightCurve.dx, firstRightCurve.dy);

    final secondLeftCurve = Offset(0, size.height - 20);
    final secondRightCurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondLeftCurve.dx, secondLeftCurve.dy,
        secondRightCurve.dx, secondRightCurve.dy);


    final thirdLeftCurve = Offset(size.width, size.height - 20);
    final thirdRightCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdLeftCurve.dx, thirdLeftCurve.dy,
        thirdRightCurve.dx, thirdRightCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
