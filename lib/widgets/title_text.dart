import 'package:flutter/cupertino.dart';
import 'package:movie_app/resources/colors.dart';
import 'package:movie_app/resources/dimens.dart';

class TitleText extends StatelessWidget {
  final String title;

  TitleText(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: HOME_SCREEN_LIST_TITLE_COLOR,
          fontSize: TEXT_REGULAR,
          fontWeight: FontWeight.bold),
    );
  }
}
