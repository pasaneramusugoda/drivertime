import 'package:flutter/material.dart';

enum BottomNavItems { Dashboard, Location, History, Settings }

extension BottomNavItemsExtension on BottomNavItems {
  IconData get icon {
    switch(this) {
      case BottomNavItems.Dashboard:
        return Icons.directions_car_rounded;
      case BottomNavItems.Location:
        return Icons.location_on_rounded;
      case BottomNavItems.History:
        return Icons.history_rounded;
      case BottomNavItems.Settings:
        return Icons.settings_rounded;
      default:
        return null;
    }
  }
}