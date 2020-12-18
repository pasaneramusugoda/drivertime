import 'package:drive_time/core/enums/bottom_nav_items.dart';
import 'package:drive_time/ui/views/main/main_view_model.dart';
import 'package:drive_time/ui/widgets/bottom_nav_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainNav extends ViewModelWidget<MainViewModel> {
  @override
  Widget build(BuildContext context, MainViewModel model) {
    return Container(
      height: 90.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(46),
            topRight: Radius.circular(46),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xffFDE9DA),
              blurRadius: 10,
            )
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
