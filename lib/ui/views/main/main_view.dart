import 'package:drive_time/core/enums/bottom_nav_items.dart';
import 'package:drive_time/ui/views/dashboard/dashboard_view.dart';
import 'package:drive_time/ui/views/main/main_nav.dart';
import 'package:drive_time/ui/views/main/main_view_model.dart';
import 'package:drive_time/ui/widgets/app_bar/custom_app_bar.dart';
import 'package:drive_time/ui/widgets/dummy_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainView extends ViewModelBuilderWidget<MainViewModel> {
  @override
  Widget builder(BuildContext context, MainViewModel model, Widget child) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(100),
      ),
      body: PageView.builder(
        itemCount: BottomNavItems.values.length,
        controller: model.controller,
        itemBuilder: (BuildContext context, int index) {
          switch (BottomNavItems.values[index]) {
            case BottomNavItems.Dashboard:
              return DashboardView();
            case BottomNavItems.Location:
              return DummyView(name: 'Location');
            case BottomNavItems.History:
              return DummyView(name: 'History');
            case BottomNavItems.Settings:
              return DummyView(name: 'Settings');
            default:
              return null;
          }
        },
      ),
      bottomNavigationBar: MainNav(),
    );
  }

  @override
  MainViewModel viewModelBuilder(BuildContext context) => MainViewModel();
}
