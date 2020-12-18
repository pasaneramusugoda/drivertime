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
    bottomAppBarColor: Colors.black,
    // textTheme: textTheme,
  );

  return base.copyWith(
    // inputDecorationTheme: InputDecorationTheme(
    //   labelStyle: TextStyle(
    //     color: AppColors.textFieldLabel,
    //   ),
    //   hintStyle: TextStyle(
    //       color: AppColors.textFieldHint,
    //       fontSize: 13.0,
    //       fontWeight: FontWeight.w600),
    //   errorStyle: TextStyle(
    //       color: AppColors.textFieldError,
    //       fontSize: 13.0,
    //       fontWeight: FontWeight.w600),
    //   focusColor: AppColors.textFieldFocused,
    //   border: UnderlineInputBorder(
    //     borderSide: BorderSide(color: AppColors.textFieldNormal),
    //   ),
    //   enabledBorder: UnderlineInputBorder(
    //     borderSide: BorderSide(color: AppColors.textFieldNormal),
    //   ),
    //   focusedBorder: UnderlineInputBorder(
    //     borderSide: BorderSide(color: AppColors.textFieldFocused),
    //   ),
    //   errorBorder: UnderlineInputBorder(
    //     borderSide: BorderSide(color: AppColors.textFieldError),
    //   ),
    //   focusedErrorBorder: UnderlineInputBorder(
    //     borderSide: BorderSide(color: AppColors.textFieldError, width: 2.0),
    //   ),
    //   disabledBorder: UnderlineInputBorder(
    //     borderSide: BorderSide(color: AppColors.textFieldDisabled),
    //   ),
    // ),
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
        textStyle: AppStyle.textButton,
        primary: Colors.black87,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8)
      )
    ),
  );
}
