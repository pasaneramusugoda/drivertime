import 'package:drive_time/r.g.dart';
import 'package:drive_time/ui/theme/styles.dart';
import 'package:drive_time/ui/widgets/app_bar/app_bar_background.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: Size.fromHeight(120),
            painter: AppBarBackground(),
          ),
          Positioned(
            top: MediaQuery.of(context).viewPadding.top + 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: R.image.ic_book(), color: Colors.white,),
                const SizedBox(width: 4),
                Text('DriveTime', style: AppStyle.textTitle,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
