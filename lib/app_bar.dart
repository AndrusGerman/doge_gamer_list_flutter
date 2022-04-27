import 'package:flutter/material.dart';

class WaveAppBar extends StatelessWidget {
  const WaveAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Title App
    const title = Text(
      "Doge Gamer List",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
    );

    // Waves Gradient and color
    const appBarStyle = BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue, Color.fromARGB(255, 100, 97, 236)]));

    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        alignment: const Alignment(-0.8, -0.4),
        height: 180,
        decoration: appBarStyle,
        child: title,
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Point start 75% height
    final p0 = size.height * 0.75;
    path.lineTo(0.0, p0); // desde el punto a => p0

    // Point Wave
    final controlPoint = Offset(size.width * 0.4, size.height);

    // Point Final wave
    final endPoint = Offset(size.width, size.height * 0.6);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    // content
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>
      oldClipper != this;
}
