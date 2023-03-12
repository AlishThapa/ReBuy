import 'package:flutter/material.dart';

class MyBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BackgroundPainter(),
        child: Container(),
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paintRed = Paint()
      ..shader = const LinearGradient(
        colors: [Colors.red, Colors.redAccent],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      ).createShader(Rect.fromLTRB(0, 0, size.width, size.height / 2));
    final paintBlue = Paint()
      ..shader = const LinearGradient(
        colors: [Colors.blue, Colors.indigo],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ).createShader(Rect.fromLTRB(0, size.height / 2, size.width, size.height));
    final paintGreen = Paint()
      ..shader = const LinearGradient(
        colors: [Colors.lightGreenAccent, Colors.greenAccent],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTRB(0, 0, size.width, size.height));

    final path = Path();
    path.moveTo(0, size.height / 2);
    path.quadraticBezierTo(size.width / 4, size.height / 4, size.width / 2, size.height / 2);
    path.quadraticBezierTo(3 * size.width / 4, 3 * size.height / 4, size.width, size.height / 2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paintRed);
    canvas.drawPath(path, paintBlue);
    canvas.drawPath(path, paintGreen);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
