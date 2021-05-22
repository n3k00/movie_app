import 'package:flutter/material.dart';
import 'package:movie_app/resources/dimens.dart';
import 'package:movie_app/widgets/rating_view.dart';

class MovieView extends StatelessWidget {
  final Function onTapMovie;
  MovieView(this.onTapMovie);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MARGIN_CARD_MEDIUM_2),
      width: MOVIE_LIST_ITEM_WIDTH,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              onTapMovie();
            },
            child: Image.network(
              "https://m.media-amazon.com/images/M/MV5BNzg1MDQxMTQ2OF5BMl5BanBnXkFtZTcwMTk3MjAzOQ@@._V1_UX182_CR0,0,182,268_AL_.jpg",
              height: MOVIE_LIST_ITEM_IMAGE_HEIGHT,
              width: MOVIE_LIST_ITEM_WIDTH,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM),
          Text(
            "The Wolvarine",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: TEXT_REGULAR_2X,
            ),
          ),
          SizedBox(
            height: MARGIN_MEDIUM,
          ),
          Row(
            children: [
              Text(
                "8.9",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: TEXT_REGULAR,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: MARGIN_MEDIUM,
              ),
              RatingView(),
            ],
          )
        ],
      ),
    );
  }
}
