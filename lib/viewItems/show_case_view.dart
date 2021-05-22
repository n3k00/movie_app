import 'package:flutter/material.dart';
import 'package:movie_app/resources/dimens.dart';
import 'package:movie_app/widgets/play_button_view.dart';
import 'package:movie_app/widgets/title_text.dart';

class ShowCaseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SHOW_CASE_WIDTH,
      margin: EdgeInsets.only(right: MARGIN_MEDIUM_2),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtlgRnUt_ohWzaLSj4hyfp6Km744XCbyioS-VjXyoWoHS64NvA6o3j17fEtZ_8NXtbhvA&usqp=CAU",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: PlayButtonView(),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(MARGIN_MEDIUM_2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "The Passenger",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: TEXT_REGULAR_3X,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: MARGIN_SMALL),
                  TitleText("15 DECEMBER 2013"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
