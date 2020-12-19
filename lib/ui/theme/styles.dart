import 'package:drive_time/r.g.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static TextStyle get textTitle => TextStyle(
        fontFamily: R.fontFamily.sFProDisplay,
        fontSize: 22,
        color: Colors.white,
        fontWeight: FontWeight.w800,
      );
  static TextStyle get textButton => TextStyle(
        fontFamily: R.fontFamily.sFProDisplay,
        fontSize: 22,
        color: Colors.black87,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get textElevatedButton => TextStyle(
    fontFamily: R.fontFamily.sFProDisplay,
    fontSize: 18,
    color: Colors.black87,
    fontWeight: FontWeight.w400,
  );
  static TextStyle get textRemarks => TextStyle(
        fontFamily: R.fontFamily.sFProDisplay,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get textDialogTitle => TextStyle(
    fontFamily: R.fontFamily.sFProDisplay,
    fontSize: 28,
    fontWeight: FontWeight.w700,
  );
  static TextStyle get infoDate => TextStyle(
    fontFamily: R.fontFamily.sFProDisplay,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static TextStyle get info => TextStyle(
    fontFamily: R.fontFamily.sFProDisplay,
    fontSize: 14,
    color: Colors.black54,
    fontWeight: FontWeight.w500,
  );
}
