import 'package:drive_time/core/enums/bottom_nav_items.dart';
import 'package:drive_time/ui/views/main/main_view_model.dart';
import 'package:drive_time/ui/widgets/bottom_nav_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainNav extends ViewModelWidget<MainViewModel> {
  @override
  Widget build(BuildContext context, MainViewModel model) {
    return Container(
      height: kBottomNavigationBarHeight + (MediaQuery.of(context).viewPadding.bottom / 2),
      padding:
          EdgeInsets.only(top: MediaQuery.of(context).viewPadding.bottom / 2),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 3,
              spreadRadius: 3,
              offset: Offset(0, -4),
            ),
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: BottomNavItems.values
            .map((e) => BottomNavButton(
                  item: e,
                  icon: e.icon,
                ))
            .toList(),
      ),
    );
  }
}
