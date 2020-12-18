import 'package:drive_time/ui/theme/color.dart';
import 'package:drive_time/ui/theme/styles.dart';
import 'package:drive_time/ui/views/dashboard/dashboard_view_model.dart';
import 'package:drive_time/ui/views/dashboard/driver_info.dart';
import 'package:drive_time/ui/views/dashboard/driver_tasks.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DashboardView extends ViewModelBuilderWidget<DashboardViewModel> {
  @override
  Widget builder(BuildContext context, DashboardViewModel model, Widget child) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              DriverInfo(),
              const SizedBox(height: 16),
              DriverTasks(),
              const SizedBox(height: 16),
              Text("Driver's Latest Remarks:"),
              const SizedBox(height: 4),
              ListView.separated(
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                separatorBuilder: (context, index) => Divider(
                  color: AppColors.accent,
                ),
                itemBuilder: (context, index) => Text(
                  'Gate access code is 8237452 ask for Mike',
                  style: AppStyle.textRemarks,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  DashboardViewModel viewModelBuilder(BuildContext context) =>
      DashboardViewModel();
}
