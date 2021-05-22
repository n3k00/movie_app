import 'package:flutter/material.dart';

class SeeMoreText extends StatelessWidget {
  final String seeMore;
  final Color textColor;
  final bool seeMoreTextVisibility;
  SeeMoreText(
    this.seeMore, {
    this.textColor: Colors.white,
    this.seeMoreTextVisibility = true,
  });
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: seeMoreTextVisibility,
      child: Text(
        seeMore,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: textColor,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
