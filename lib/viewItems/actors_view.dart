import 'package:flutter/material.dart';
import 'package:movie_app/resources/colors.dart';
import 'package:movie_app/resources/dimens.dart';

class ActorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MOVIE_LIST_ITEM_WIDTH,
      margin: EdgeInsets.only(right: MARGIN_MEDIUM_2),
      child: Stack(
        children: [
          Positioned.fill(
            child: ActorImageView(),
          ),
          Padding(
            padding: const EdgeInsets.all(MARGIN_MEDIUM),
            child: Align(
              alignment: Alignment.topRight,
              child: FavouriteButtonView(),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(MARGIN_MEDIUM),
              child: ActorNameAndLikeView(),
            ),
          ),
        ],
      ),
    );
  }
}

class ActorNameAndLikeView extends StatelessWidget {
  const ActorNameAndLikeView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Leonardo Dicaprio",
          style: TextStyle(
            color: Colors.white,
            fontSize: TEXT_REGULAR,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM),
        Row(
          children: [
            Icon(
              Icons.thumb_up,
              color: Colors.amber,
              size: MARGIN_MEDIUM_2,
            ),
            SizedBox(width: MARGIN_MEDIUM),
            Text(
              "YOU LIKE 13 MOVIES",
              style: TextStyle(
                color: HOME_SCREEN_BACKGROUND_COLOR,
                fontSize: TEXT_SMALL,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class FavouriteButtonView extends StatelessWidget {
  const FavouriteButtonView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.favorite_border,
      color: Colors.white,
    );
  }
}

class ActorImageView extends StatelessWidget {
  const ActorImageView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://cdn.britannica.com/05/156805-050-4B632781/Leonardo-DiCaprio-2010.jpg",
      fit: BoxFit.cover,
    );
  }
}
