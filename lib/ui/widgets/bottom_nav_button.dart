import 'package:drive_time/core/enums/bottom_nav_items.dart';
import 'package:drive_time/ui/theme/color.dart';
import 'package:drive_time/ui/views/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BottomNavButton extends ViewModelWidget<MainViewModel> {
  final BottomNavItems item;
  final IconData icon;
  final Widget iconWidget;
  final String name;

  BottomNavButton({@required this.item, this.icon, this.iconWidget, this.name})
      : assert(icon != null || iconWidget != null);

  @override
  Widget build(BuildContext context, MainViewModel model) {
    return InkWell(
      onTap: () => model.onClickMainNav(item),
      radius: 36,
      borderRadius: BorderRadius.circular(42.0),
      child: Container(
        margin:
            const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 2.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            iconWidget != null
                ? Container(child: iconWidget)
                : Icon(
                    icon,
                    size: 24,
                    color: model.currentNavItem == item
                        ? AppColors.accent
                        : Colors.black87,
                  ),
            if (name != null) SizedBox(height: 2.0),
            if (name != null)
              Text(
                name,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: model.currentNavItem == item
                          ? AppColors.accent
                          : Colors.black87,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
