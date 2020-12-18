import 'package:drive_time/r.g.dart';
import 'package:drive_time/ui/theme/styles.dart';
import 'package:drive_time/ui/widgets/app_bar/app_bar_background.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: Size.fromHeight(100),
            painter: AppBarBackground(),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
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
