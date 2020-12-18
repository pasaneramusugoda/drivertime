import 'package:drive_time/ui/theme/styles.dart';
import 'package:drive_time/ui/views/dashboard/dashboard_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:stacked/stacked.dart';

class DriverInfo extends ViewModelWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel model) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            DropdownButton(
              underline: Container(),
              items: [DropdownMenuItem(child: Text('Test Vehicle'))],
              onChanged: (value) => model.onChangeVehicle(value),
            ),
            Text(
              '114,000km',
              style: AppStyle.textButton.copyWith(fontSize: 14),
            ),
            Text('Hubometer'),
          ],
        ),
        Container(
          color: Colors.black45,
          width: 1,
          height: 80,
        ),
        Column(
          children: [
            Text(
              'Idle',
              style: AppStyle.textButton.copyWith(fontSize: 24),
            ),
            Text('Current Status'),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 12,
              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ],
        ),
        Container(
          color: Colors.black45,
          width: 1,
          height: 80,
        ),
        Column(
          children: [
            Text(
              '3h',
              style: AppStyle.textButton,
            ),
            Text('Next Brake Due'),
          ],
        )
      ],
    );
  }
}
