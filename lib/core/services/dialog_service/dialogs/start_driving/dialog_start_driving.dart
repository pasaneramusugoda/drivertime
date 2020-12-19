import 'dart:ui';

import 'package:drive_time/core/services/dialog_service/dialogs/start_driving/dialog_start_driving_view_model.dart';
import 'package:drive_time/ui/theme/color.dart';
import 'package:drive_time/ui/theme/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:stacked/stacked.dart';

import '../../../../../ui/theme/dim.dart';

class DialogStartDriving extends StatefulWidget {
  @override
  _DialogStartDrivingState createState() => _DialogStartDrivingState();
}

class _DialogStartDrivingState extends State<DialogStartDriving> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: _dialogBody(context),
    );
  }

  _dialogBody(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 16.0,
          ),
          padding: EdgeInsets.only(
            top: AppDim.size16,
            bottom: AppDim.size8,
            left: AppDim.size16,
            right: AppDim.size16,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          child: _bodyContent(),
        ),
        // if (widget.type != DialogType.Info) Image(image: widget.type.image),
      ],
    );
  }

  _bodyContent() {
    return ViewModelBuilder<DialogStartDrivingViewModel>.reactive(
      viewModelBuilder: () => DialogStartDrivingViewModel(),
      builder: (context, model, child) {
        return Material(
          child: ReactiveForm(
            formGroup: model.form,
            child: Column(
              mainAxisSize: MainAxisSize.min, // To make the card compact
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Start Driving',
                  textAlign: TextAlign.center,
                  style: AppStyle.textDialogTitle,
                ),
                SizedBox(height: 16),
                ReactiveTextField(
                  formControlName: 'date_time',
                  decoration: const InputDecoration(
                    labelText: 'Time and Date',
                  ),
                  keyboardType: TextInputType.datetime,
                  validationMessages: (control) => {
                    'required': 'The time and date must not be empty',
                  },
                  onTap: () => model.onTapDateTime(context),
                ),
                SizedBox(height: 16),
                ReactiveTextField(
                  formControlName: 'location',
                  decoration: const InputDecoration(
                    labelText: 'Location',
                    suffixIcon: Icon(Icons.my_location),
                  ),
                  keyboardType: TextInputType.streetAddress,
                  validationMessages: (control) => {
                    'required': 'The location must not be empty',
                  },
                ),
                SizedBox(height: 16),
                ReactiveTextField(
                  formControlName: 'odo',
                  decoration: const InputDecoration(
                    labelText: 'Current Hubo Reading',
                  ),
                  keyboardType: TextInputType.numberWithOptions(),
                  validationMessages: (control) => {
                    'required': 'The hubo reading must be number',
                    'min': 'The value must be grater than 0'
                  },
                ),
                SizedBox(height: 24),
                ReactiveFormConsumer(
                  builder: (context, formGroup, child) {
                    return ElevatedButton(
                      onPressed: formGroup.valid ? model.onClickPositive : null,
                      child: Text('confirm and log'.toUpperCase()),
                    );
                  },
                ),
                TextButton(
                  child: Text('Cancel'.toUpperCase()),
                  onPressed: model.onClickNegative,
                  style: TextButton.styleFrom(
                    textStyle: AppStyle.textElevatedButton,
                    primary: AppColors.accent,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
