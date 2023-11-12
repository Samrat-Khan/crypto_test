import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  final Color color;

  RPSCustomPainter({super.repaint, required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.4000000);
    path_0.lineTo(size.width * 0.008750000, size.height * 0.4000000);
    path_0.cubicTo(
        size.width * 0.01756944,
        size.height * 0.4000000,
        size.width * 0.03541667,
        size.height * 0.4000000,
        size.width * 0.05277778,
        size.height * 0.3665625);
    path_0.cubicTo(
        size.width * 0.07020833,
        size.height * 0.3343750,
        size.width * 0.08750000,
        size.height * 0.2656250,
        size.width * 0.1055556,
        size.height * 0.2165625);
    path_0.cubicTo(
        size.width * 0.1227778,
        size.height * 0.1656250,
        size.width * 0.1402778,
        size.height * 0.1343750,
        size.width * 0.1576389,
        size.height * 0.1165625);
    path_0.cubicTo(
        size.width * 0.1754167,
        size.height * 0.1000000,
        size.width * 0.1930556,
        size.height * 0.1000000,
        size.width * 0.2104167,
        size.height * 0.2000000);
    path_0.cubicTo(
        size.width * 0.2280556,
        size.height * 0.3000000,
        size.width * 0.2458333,
        size.height * 0.5000000,
        size.width * 0.2631944,
        size.height * 0.6000000);
    path_0.cubicTo(
        size.width * 0.2806944,
        size.height * 0.7000000,
        size.width * 0.2979167,
        size.height * 0.7000000,
        size.width * 0.3159722,
        size.height * 0.7500000);
    path_0.cubicTo(
        size.width * 0.3333333,
        size.height * 0.8000000,
        size.width * 0.3506944,
        size.height * 0.9000000,
        size.width * 0.3687500,
        size.height * 0.8165625);
    path_0.cubicTo(
        size.width * 0.3859722,
        size.height * 0.7343750,
        size.width * 0.4034722,
        size.height * 0.4656250,
        size.width * 0.4208333,
        size.height * 0.3665625);
    path_0.cubicTo(
        size.width * 0.4386111,
        size.height * 0.2656250,
        size.width * 0.4562500,
        size.height * 0.3343750,
        size.width * 0.4736111,
        size.height * 0.4000000);
    path_0.cubicTo(
        size.width * 0.4912500,
        size.height * 0.4656250,
        size.width * 0.5090278,
        size.height * 0.5343750,
        size.width * 0.5263889,
        size.height * 0.5500000);
    path_0.cubicTo(
        size.width * 0.5438889,
        size.height * 0.5656250,
        size.width * 0.5611111,
        size.height * 0.5343750,
        size.width * 0.5791667,
        size.height * 0.5334375);
    path_0.cubicTo(
        size.width * 0.5964583,
        size.height * 0.5343750,
        size.width * 0.6138889,
        size.height * 0.5656250,
        size.width * 0.6312500,
        size.height * 0.5665625);
    path_0.cubicTo(
        size.width * 0.6490972,
        size.height * 0.5656250,
        size.width * 0.6666667,
        size.height * 0.5343750,
        size.width * 0.6840278,
        size.height * 0.4334375);
    path_0.cubicTo(
        size.width * 0.7017361,
        size.height * 0.3343750,
        size.width * 0.7194444,
        size.height * 0.1656250,
        size.width * 0.7368056,
        size.height * 0.2165625);
    path_0.cubicTo(
        size.width * 0.7543750,
        size.height * 0.2656250,
        size.width * 0.7722222,
        size.height * 0.5343750,
        size.width * 0.7895833,
        size.height * 0.5334375);
    path_0.cubicTo(
        size.width * 0.8070139,
        size.height * 0.5343750,
        size.width * 0.8243056,
        size.height * 0.2656250,
        size.width * 0.8423611,
        size.height * 0.1665625);
    path_0.cubicTo(
        size.width * 0.8596528,
        size.height * 0.06562500,
        size.width * 0.8770833,
        size.height * 0.1343750,
        size.width * 0.8944444,
        size.height * 0.3000000);
    path_0.cubicTo(
        size.width * 0.9122917,
        size.height * 0.4656250,
        size.width * 0.9298611,
        size.height * 0.7343750,
        size.width * 0.9472222,
        size.height * 0.7334375);
    path_0.cubicTo(
        size.width * 0.9649306,
        size.height * 0.7343750,
        size.width * 0.9826389,
        size.height * 0.4656250,
        size.width * 0.9909722,
        size.height * 0.3334375);
    path_0.lineTo(size.width, size.height * 0.2000000);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width * 0.9912500, size.height);
    path_0.cubicTo(size.width * 0.9824306, size.height, size.width * 0.9645833,
        size.height, size.width * 0.9472222, size.height);
    path_0.cubicTo(size.width * 0.9297917, size.height, size.width * 0.9125000,
        size.height, size.width * 0.8944444, size.height);
    path_0.cubicTo(size.width * 0.8772222, size.height, size.width * 0.8597222,
        size.height, size.width * 0.8423611, size.height);
    path_0.cubicTo(size.width * 0.8245833, size.height, size.width * 0.8069444,
        size.height, size.width * 0.7895833, size.height);
    path_0.cubicTo(size.width * 0.7719444, size.height, size.width * 0.7541667,
        size.height, size.width * 0.7368056, size.height);
    path_0.cubicTo(size.width * 0.7193056, size.height, size.width * 0.7020833,
        size.height, size.width * 0.6840278, size.height);
    path_0.cubicTo(size.width * 0.6666667, size.height, size.width * 0.6493056,
        size.height, size.width * 0.6312500, size.height);
    path_0.cubicTo(size.width * 0.6140278, size.height, size.width * 0.5965278,
        size.height, size.width * 0.5791667, size.height);
    path_0.cubicTo(size.width * 0.5613889, size.height, size.width * 0.5437500,
        size.height, size.width * 0.5263889, size.height);
    path_0.cubicTo(size.width * 0.5087500, size.height, size.width * 0.4909722,
        size.height, size.width * 0.4736111, size.height);
    path_0.cubicTo(size.width * 0.4561111, size.height, size.width * 0.4388889,
        size.height, size.width * 0.4208333, size.height);
    path_0.cubicTo(size.width * 0.4035417, size.height, size.width * 0.3861111,
        size.height, size.width * 0.3687500, size.height);
    path_0.cubicTo(size.width * 0.3509028, size.height, size.width * 0.3333333,
        size.height, size.width * 0.3159722, size.height);
    path_0.cubicTo(size.width * 0.2982639, size.height, size.width * 0.2805556,
        size.height, size.width * 0.2631944, size.height);
    path_0.cubicTo(size.width * 0.2456250, size.height, size.width * 0.2277778,
        size.height, size.width * 0.2104167, size.height);
    path_0.cubicTo(size.width * 0.1929861, size.height, size.width * 0.1756944,
        size.height, size.width * 0.1576389, size.height);
    path_0.cubicTo(size.width * 0.1403472, size.height, size.width * 0.1229167,
        size.height, size.width * 0.1055556, size.height);
    path_0.cubicTo(
        size.width * 0.08770833,
        size.height,
        size.width * 0.07013889,
        size.height,
        size.width * 0.05277778,
        size.height);
    path_0.cubicTo(
        size.width * 0.03506944,
        size.height,
        size.width * 0.01736111,
        size.height,
        size.width * 0.009027778,
        size.height);
    path_0.lineTo(0, size.height);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color;
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
