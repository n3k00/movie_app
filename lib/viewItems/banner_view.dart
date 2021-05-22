import 'package:flutter/material.dart';
import 'package:movie_app/resources/dimens.dart';
import 'package:movie_app/widgets/gradient_view.dart';
import 'package:movie_app/widgets/play_button_view.dart';

class BannerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: BannerImageView(),
        ),
        Positioned.fill(
          child: GradientView(),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: BannerTitleView(),
        ),
        Align(
          alignment: Alignment.center,
          child: PlayButtonView(),
        ),
      ],
    );
  }
}

class BannerTitleView extends StatelessWidget {
  const BannerTitleView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MARGIN_MEDIUM_2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "The wolverine 2013",
            style: TextStyle(
                fontSize: TEXT_HEADING_X1,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          Text(
            "Official Review",
            style: TextStyle(
              color: Colors.white,
              fontSize: TEXT_HEADING_X1,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class BannerImageView extends StatelessWidget {
  const BannerImageView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://i.dailymail.co.uk/i/pix/scaled/2013/03/25/article-0-18EAB89C000005DC-608_308x185.jpg",
      fit: BoxFit.cover,
    );
  }
}
