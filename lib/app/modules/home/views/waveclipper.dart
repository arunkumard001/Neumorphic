import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height - 90);
    path.quadraticBezierTo(
        size.width / 6,
        size.height - 110, //point #3
        size.width / 2,
        size.height - 30); //point #4
    var secondControlPoint =
        Offset(size.width - size.width / 3, size.height + 10); //#point #5
    var secondEndPoint = Offset(size.width, size.height - 3); //point #6
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height - 5); //move to top right #7
    path.lineTo(
        size.width, 0.0); //and back to the origin, could not be necessary #1
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
