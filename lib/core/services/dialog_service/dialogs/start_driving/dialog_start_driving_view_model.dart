import 'package:auto_route/auto_route.dart';
import 'package:drive_time/core/models/drive_info.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:platform_date_picker/platform_date_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:stacked/stacked.dart';

class DialogStartDrivingViewModel extends BaseViewModel {
  final form = FormGroup({
    'date_time': FormControl<String>(validators: [Validators.required]),
    'location': FormControl<String>(validators: [Validators.required]),
    'odo': FormControl<int>(validators: [
      Validators.required,
      Validators.number,
      (AbstractControl<dynamic> control) {
        return control.isNotNull && control.value is int && control.value > 0
            ? null
            : {'min': false};
      }
    ]),
  });

  void onClickPositive() {
    final info = DriveInfo(
      form.value['date_time'],
      form.value['location'],
      form.value['odo'],
    );
    ExtendedNavigator.root.pop(info);
  }

  void onClickNegative() => ExtendedNavigator.root.pop(null);

  void onTapDateTime(context) {
    PlatformDatePicker.showDate(
            context: context,
            firstDate: DateTime.now(),
            initialDate: DateTime.now(),
            showMaterial: true,
            showCupertino: false,
            lastDate: DateTime.now().add(Duration(days: 30)))
        .then((date) {
      if (date == null) return;
      PlatformDatePicker.showTime(
        context: context,
        initialTime: TimeOfDay.now(),
        showMaterial: true,
        showCupertino: false,
      ).then((time) {
        if (date == null || time == null) return;
        form.control('date_time').value =
            '${time.format(context)}, ${DateFormat('dd MMM yyyy').format(date)}';
      });
    });
  }
}
