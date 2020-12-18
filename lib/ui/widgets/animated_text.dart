import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool bounce;

  AnimatedText(this.text, {this.style, this.bounce = false});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 200),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SlideTransition(
          child: FadeTransition(
            child: child,
            opacity: Tween(begin: 0.0, end: 1.0).animate(animation),
          ),
          position: Tween<Offset>(
                  begin: Offset(0.0, bounce ? 0.5 : 0.0), end: Offset(0.0, 0.0))
              .animate(animation),
        );
      },
      child: Text(
        text,
        key: ValueKey<String>(text),
        style: style,
      ),
    );
  }
}
