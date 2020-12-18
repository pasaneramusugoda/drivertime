import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../ui/theme/color.dart';

class ProgressButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool isBusy;
  final Color color;

  const ProgressButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.isBusy = false,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color ?? AppColors.accent,
      child: isBusy
          ? Center(
              child: CircularProgressIndicator(
                strokeWidth: 3.0,
                backgroundColor: Colors.white30,
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            )
          : Text(text),
      onPressed: isBusy ? null : onPressed,
    );
  }
}
