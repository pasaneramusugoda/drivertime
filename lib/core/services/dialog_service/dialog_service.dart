import 'package:drive_time/core/models/drive_info.dart';
import 'package:drive_time/core/services/dialog_service/dialogs/start_driving/dialog_start_driving.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../core/services/navigation_service.dart';
import 'dialogs/dialog_message.dart';

class DialogService {
  final navigationService = GetIt.I<NavigationService>();

  Future message(
    String message, {
    String title,
    DialogType type = DialogType.Info,
    String positiveButtonText = 'OK',
    Function(dynamic val) positiveCallback,
    bool dismissible = true,
  }) {
    return showDialog(
      context: navigationService.navigatorKey.currentState.context,
      barrierDismissible: dismissible,
      builder: (context) => DialogMessage(
        message: message,
        title: title,
        type: type,
        positiveCallback: positiveCallback,
        positiveText: positiveButtonText,
      ),
    );
  }

  Future confirm(
    String message, {
    String title,
    String positiveButtonText = 'Yes',
    String negativeButtonText = 'No',
    Function(dynamic val) positiveCallback,
    Function(dynamic val) negativeCallBack,
    DialogType type = DialogType.Info,
    bool dismissible = true,
  }) {
    return showDialog(
      context: navigationService.navigatorKey.currentState.context,
      barrierDismissible: dismissible,
      builder: (context) => DialogMessage(
        message: message,
        title: title,
        positiveText: positiveButtonText,
        negativeText: negativeButtonText,
        positiveCallback: positiveCallback,
        negativeCallback: negativeCallBack,
        type: type,
      ),
    );
  }

  Future startDriving() {
    return showDialog(
      context: navigationService.navigatorKey.currentState.context,
      builder: (context) => DialogStartDriving(),
    );
  }
}
