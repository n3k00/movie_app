import 'package:flutter/material.dart';
import 'package:movie_app/widgets/see_more_text.dart';
import 'package:movie_app/widgets/title_text.dart';

class TitleTextWithSeeMoreView extends StatelessWidget {
  final String title;
  final String seeMore;
  final bool seeMoreTextVisibility;
  TitleTextWithSeeMoreView(
    this.title,
    this.seeMore, {
    this.seeMoreTextVisibility = true,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TitleText(title),
        Spacer(),
        SeeMoreText(
          seeMore,
          seeMoreTextVisibility: seeMoreTextVisibility,
        ),
      ],
    );
  }
}
