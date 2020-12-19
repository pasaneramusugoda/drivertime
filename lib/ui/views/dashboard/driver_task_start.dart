import 'package:drive_time/r.g.dart';
import 'package:drive_time/ui/theme/color.dart';
import 'package:drive_time/ui/theme/styles.dart';
import 'package:drive_time/ui/views/dashboard/dashboard_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DriverTaskStart extends ViewModelWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel model) {
    return TextButton(
      onPressed: model.onClickStart,
      style: TextButton.styleFrom(
        backgroundColor: AppColors.driving,
        textStyle: AppStyle.textButton,
      ),
      child: model.info == null
          ? Column(
              children: [
                Image(
                  image: R.image.ic_start(),
                ),
                Text('Start Driving'.toUpperCase()),
              ],
            )
          : Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Table(
                columnWidths: {
                  0: IntrinsicColumnWidth(),
                  1: FlexColumnWidth(),
                },
                children: [
                  TableRow(
                    children: [
                      Text('Time and Date', style: AppStyle.info),
                      Text(' : ${model.info.dateTime}', style: AppStyle.infoDate),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text('Location', style: AppStyle.info),
                      Text(' : ${model.info.location}', style: AppStyle.infoDate),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text('Current Hubo Reading', style: AppStyle.info),
                      Text(' : ${model.info.reading}', style: AppStyle.infoDate),
                    ],
                  ),
                ],
              ),
          ),
    );
  }
}
