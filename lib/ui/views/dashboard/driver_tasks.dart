import 'package:drive_time/r.g.dart';
import 'package:drive_time/ui/theme/color.dart';
import 'package:drive_time/ui/theme/styles.dart';
import 'package:drive_time/ui/views/dashboard/dashboard_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DriverTasks extends ViewModelWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextButton(
          onPressed: model.onClickStart,
          style: TextButton.styleFrom(backgroundColor: AppColors.driving),
          child: Column(
            children: [
              Image(
                image: R.image.ic_start(),
              ),
              Text('Start Driving'.toUpperCase()),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: model.onClickWork,
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.work,
                  textStyle: AppStyle.textButton.copyWith(fontSize: 14),
                ),
                child: FittedBox(
                  child: Column(
                    children: [
                      Image(
                        image: R.image.ic_work(),
                      ),
                      Text('Start Other work'.toUpperCase()),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: TextButton(
                onPressed: model.onClickRest,
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.rest,
                  textStyle: AppStyle.textButton.copyWith(fontSize: 14),
                ),
                child: FittedBox(
                  child: Column(
                    children: [
                      Image(
                        image: R.image.ic_rest(),
                      ),
                      Text('start rest'.toUpperCase()),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: model.onClickStart,
          style: TextButton.styleFrom(backgroundColor: AppColors.day),
          child: Column(
            children: [
              Image(
                image: R.image.ic_end(),
              ),
              Text('End of day'.toUpperCase()),
            ],
          ),
        ),
      ],
    );
  }
}
