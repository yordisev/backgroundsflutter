import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.blue,
    );
  }
}

class HeaderCircular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      // color: Colors.blue,
      child: CustomPaint(
        painter: _HeaderDiagonalpaint(),
      ),
    );
  }
}

class _HeaderDiagonalpaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = Colors.green;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2;
    final path = new Path();

    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.5);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderTriangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      // color: Colors.blue,
      child: CustomPaint(
        painter: _HeaderTriangulopaint(),
      ),
    );
  }
}

class _HeaderTriangulopaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = Colors.green;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2;
    final path = new Path();

    // path.moveTo(0, size.height * 0.50);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height * 0.5);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      // color: Colors.blue,
      child: CustomPaint(
        painter: _HeaderPicopaint(),
      ),
    );
  }
}

class _HeaderPicopaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = Colors.green;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2;
    final path = new Path();

    path.lineTo(0, size.height * 0.20);
    path.lineTo(size.width * 0.5, size.height * 0.28);
    path.lineTo(size.width, size.height * 0.20);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      // color: Colors.blue,
      child: CustomPaint(
        painter: _HeaderCurvopaint(),
      ),
    );
  }
}

class _HeaderCurvopaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = Colors.green;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2;
    final path = new Path();

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.40, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      // color: Colors.blue,
      child: CustomPaint(
        painter: _HeaderWavepaint(),
      ),
    );
  }
}

class _HeaderWavepaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = Colors.green;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2;
    final path = new Path();

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
