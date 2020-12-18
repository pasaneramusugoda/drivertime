import 'package:drive_time/ui/theme/color.dart';
import 'package:flutter/material.dart';

class AppBarBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = AppColors.accent
      ..style = PaintingStyle.fill;

    // Path path_0 = Path();
    // path_0.moveTo(size.width*0.00,size.height*-0.00);
    // path_0.lineTo(size.width*1.00,size.height*-0.00);
    // path_0.quadraticBezierTo(size.width*1.00,size.height*0.68,size.width*1.00,size.height*0.91);
    // path_0.cubicTo(size.width*0.70,size.height*1.21,size.width*0.37,size.height*0.60,size.width*0.00,size.height*0.91);
    // path_0.quadraticBezierTo(size.width*0.00,size.height*0.68,size.width*0.00,size.height*-0.00);
    // path_0.close();
    Path path_0 = Path();
    path_0.moveTo(0,0);
    path_0.lineTo(size.width,0);
    path_0.quadraticBezierTo(size.width*1.00,size.height*0.71,size.width,size.height*1.10);
    path_0.cubicTo(size.width*0.72,size.height*1.60,size.width*0.29,size.height*0.73,0,size.height*1.10);
    path_0.quadraticBezierTo(size.width*0.00,size.height*0.30,0,0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
