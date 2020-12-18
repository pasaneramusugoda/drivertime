import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static Color primary = Colors.white;
  static Color accent = const Color(0xFFF75A30);

  static Color driving = const Color(0xFFDBFFE5);
  static Color work = const Color(0xFFFDF3B3);
  static Color rest = const Color(0xFFDBF0FF);
  static Color day = const Color(0xFFFEE7E9);

  static Color gray1 = const Color(0xFFBBBBBB);
  static Color gray2 = const Color(0xFF828282);
  static Color gray3 = const Color(0xFF8A8A8A);
  static Color gray4 = const Color(0xFF5D5D5D);
  static Color gray5 = const Color(0xFFDEDEDE);
  static Color red = const Color(0xFFFF0000);
  static Color maroon = const Color(0xFF820606);
  static Color blue = const Color(0xFF0066FF);
  static Color darkBlue = const Color(0xFF054AB1);
  static Color green = const Color(0xFF84BC42);

  static Color error = red;
  static Color success = green;
  static Color info = accent;

  static Color border = const Color(0xFF8A8A8A);

  static Color textFieldNormal = Colors.black.withOpacity(0.5);
  static Color textFieldLabel = const Color(0xFF8A8A8A);
  static Color textFieldHint = Colors.black.withOpacity(0.5);
  static Color textFieldFocused = accent;
  static Color textFieldDisabled = Colors.black.withOpacity(0.2);
  static Color textFieldError = error;
  static Color textFieldHelper = Color(0xFF626262).withOpacity(0.7);

  static Color textCaption = Color(0xFF8A8A8A);

  static Color shadow = Colors.black12;

  static Color statusPending = accent;
  static Color statusAccepted = const Color(0xFF27AAE1);
  static Color statusPicked = const Color(0xFFFFCC02);
  static Color statusCompleted = const Color(0xFF84BC42);
  static Color statusRejected = const Color(0xFFf15a29);

  static Color appbarBackground = const Color(0xFF1D1D1D);
  static Color background = const Color(0xFFECECEC);
}
