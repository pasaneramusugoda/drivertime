import 'package:drive_time/ui/theme/styles.dart';
import 'package:flutter/material.dart';

import '../../r.g.dart';
import '../theme/color.dart';

ThemeData appTheme() {
  final base = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    accentColor: AppColors.accent,
    fontFamily: R.fontFamily.sFProDisplay,
    canvasColor: Colors.white,
  );

  return base.copyWith(
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: AppColors.textFieldLabel,
      ),
      hintStyle: TextStyle(
          color: AppColors.textFieldHint,
          fontSize: 13.0,
          fontWeight: FontWeight.w600),
      errorStyle: TextStyle(
          color: AppColors.textFieldError,
          fontSize: 13.0,
          fontWeight: FontWeight.w600),
      focusColor: AppColors.textFieldFocused,
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.textFieldNormal),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.textFieldFocused),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.textFieldFocused, width: 2.0),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.textFieldError),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.textFieldError, width: 2.0),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.textFieldDisabled),
      ),
    ),
    // buttonTheme: ButtonThemeData(
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(AppDim.buttonBorderRadius),
    //   ),
    //   buttonColor: Colors.black,
    //   height: 50.0,
    //   textTheme: ButtonTextTheme.primary,
    //   // disabledColor: AppColors.disabled,
    // ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: AppStyle.textElevatedButton,
        primary: AppColors.accent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      ),
    )
  );
}
