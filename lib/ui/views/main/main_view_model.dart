import 'package:drive_time/core/enums/bottom_nav_items.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  final PageController controller = PageController();

  MainViewModel() {
    controller.addListener(() {
      currentNavItem = BottomNavItems.values[controller.page.toInt()];
    });
  }

  BottomNavItems _currentNavItem = BottomNavItems.Dashboard;

  BottomNavItems get currentNavItem => _currentNavItem;

  set currentNavItem(BottomNavItems currentNavItem) {
    _currentNavItem = currentNavItem;
    notifyListeners();
  }

  onClickMainNav(BottomNavItems item) => controller.animateToPage(item.index,
      duration: Duration(milliseconds: 300), curve: Curves.linearToEaseOut);
}
