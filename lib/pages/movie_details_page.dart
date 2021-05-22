import 'package:flutter/material.dart';
import 'package:movie_app/resources/colors.dart';
import 'package:movie_app/resources/dimens.dart';
import 'package:movie_app/resources/strings.dart';
import 'package:movie_app/widgets/actor_and_creator_section_view.dart';
import 'package:movie_app/widgets/gradient_view.dart';
import 'package:movie_app/widgets/rating_view.dart';
import 'package:movie_app/widgets/title_text.dart';

class MovieDetailsPage extends StatelessWidget {
  final List<String> genreList = [
    "Action",
    "Adventure",
    "Thriller",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: HOME_SCREEN_BACKGROUND_COLOR,
        child: CustomScrollView(
          slivers: [
            MovieDetailsSliverAppBarView(
              () => Navigator.pop(context),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: MARGIN_MEDIUM_2,
                    ),
                    child: TraileSectionView(genreList),
                  ),
                  SizedBox(height: MARGIN_LARGE),
                  ActorAndCreatorSectionView(
                    ACTOR,
                    "",
                    seeMoreTextVisibility: false,
                  ),
                  SizedBox(height: MARGIN_LARGE),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: MARGIN_MEDIUM_2,
                    ),
                    child: AboutFilmSectionView(),
                  ),
                  SizedBox(height: MARGIN_LARGE),
                  ActorAndCreatorSectionView(
                    CREATORS,
                    MORE_CREATORS,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutFilmSectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText("ABOUT FILM"),
        SizedBox(height: MARGIN_MEDIUM_2),
        AboutFilmInfoView(
          "Original Title:",
          "X-Man Origins Wolverine",
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        AboutFilmInfoView(
          "Type:",
          "Action, Adventure,Thriller",
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        AboutFilmInfoView(
          "Production:",
          "United Kingdom, USA",
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        AboutFilmInfoView(
          "Premiere:",
          "8 November 2016(World)",
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        AboutFilmInfoView(
          "Description:",
          "Lured to a Japan he hasn't seen since World War II, century-old mutant Wolverine finds himself in a shadowy realm of yakuza and samurai. Wolverine is pushed to his physical and emotional brink when he is forced to go on the run with a powerful industrialist's daughter and is confronted for the first time -- with the prospect of death.",
        ),
      ],
    );
  }
}

class AboutFilmInfoView extends StatelessWidget {
  final String label;
  final String describtion;

  AboutFilmInfoView(this.label, this.describtion);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 4,
          child: Text(
            label,
            style: TextStyle(
              color: MOVIE_DETAIL_INGO_TEXT_COLOR,
              fontSize: MARGIN_MEDIUM_2,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(width: MARGIN_CARD_MEDIUM_2),
        Expanded(
          child: Text(
            describtion,
            style: TextStyle(
              color: Colors.white,
              fontSize: MARGIN_MEDIUM_2,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class TraileSectionView extends StatelessWidget {
  final List<String> genreList;

  TraileSectionView(
    this.genreList,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MovieTimeAndGenreView(genreList: genreList),
        SizedBox(height: MARGIN_MEDIUM_3),
        StoryLineView(),
        SizedBox(height: MARGIN_MEDIUM_2),
        Row(
          children: [
            MovieDetailsScreenButtonView(
              MOVIE_DETAIL_PLAY_TRAILER,
              PLAY_BUTTON_COLOR,
              Icon(
                Icons.play_circle_fill,
                color: Colors.black54,
              ),
            ),
            SizedBox(width: MARGIN_CARD_MEDIUM_2),
            MovieDetailsScreenButtonView(
              MOVIE_DETAIL_RATE_MOVIE,
              HOME_SCREEN_BACKGROUND_COLOR,
              Icon(
                Icons.star,
                color: PLAY_BUTTON_COLOR,
              ),
              isGhostButton: true,
            ),
          ],
        ),
      ],
    );
  }
}

class MovieDetailsScreenButtonView extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Icon buttonIcon;
  final bool isGhostButton;

  MovieDetailsScreenButtonView(
    this.title,
    this.backgroundColor,
    this.buttonIcon, {
    this.isGhostButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MARGIN_MEDIUM_2,
      ),
      height: MARGIN_XXLARGE,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(
          MARGIN_LARGE,
        ),
        border: (isGhostButton)
            ? Border.all(
                color: Colors.white,
                width: 2,
              )
            : null,
      ),
      child: Center(
        child: Row(children: [
          buttonIcon,
          SizedBox(width: MARGIN_SMALL),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: TEXT_REGULAR_2X,
            ),
          ),
        ]),
      ),
    );
  }
}

class StoryLineView extends StatelessWidget {
  const StoryLineView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(MOVIE_DETAIL_STORYLINE_TITLE),
        SizedBox(height: MARGIN_MEDIUM),
        Text(
          "Lured to a Japan he hasn't seen since World War II, century-old mutant Wolverine (Hugh Jackman) finds himself in a shadowy realm of yakuza and samurai. Wolverine is pushed to his physical and emotional brink when he is forced to go on the run with a powerful industrialist's daughter (Tao Okamoto) and is confronted -- for the first time -- with the prospect of death. As he struggles to rediscover the hero within himself, he must grapple with powerful foes and the ghosts of his own haunted past.",
          style: TextStyle(
            color: Colors.white,
            fontSize: TEXT_REGULAR_2X,
          ),
        ),
      ],
    );
  }
}

class MovieTimeAndGenreView extends StatelessWidget {
  const MovieTimeAndGenreView({
    Key key,
    @required this.genreList,
  }) : super(key: key);

  final List<String> genreList;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.access_time,
          color: PLAY_BUTTON_COLOR,
        ),
        SizedBox(
          height: MARGIN_SMALL,
        ),
        Text(
          "2h 30min",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: MARGIN_MEDIUM),
        Row(
          children: genreList
              .map(
                (genre) => GenreChipView(genre),
              )
              .toList(),
        ),
        Spacer(),
        Icon(
          Icons.favorite_border,
          color: Colors.white,
        ),
      ],
    );
  }
}

class GenreChipView extends StatelessWidget {
  final String genreText;

  GenreChipView(
    this.genreText,
  );

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Chip(
        backgroundColor: DETAIL_SCREEN_CHIP_BACKGROUND_COLOR,
        label: Text(
          genreText,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(width: MARGIN_SMALL),
    ]);
  }
}

class MovieDetailsSliverAppBarView extends StatelessWidget {
  final Function onTapBack;
  MovieDetailsSliverAppBarView(this.onTapBack);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MOVIE_DETAIL_SCREEN_SLIVER_APP_BAR_HEIGHT,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Positioned.fill(
              child: MovieDetailsImageView(),
            ),
            Positioned.fill(
              child: GradientView(),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: BackButtonView(() {
                onTapBack();
              }),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SearchButtonView(),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    left: MARGIN_MEDIUM_2,
                    right: MARGIN_MEDIUM_2,
                    bottom: MARGIN_LARGE),
                child: MovieDetailsAppBarInfoView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieDetailsAppBarInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            MovieDetailsYearView(),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RatingView(),
                    SizedBox(height: MARGIN_SMALL),
                    TitleText("38876 VOTES"),
                    SizedBox(height: MARGIN_MEDIUM),
                  ],
                ),
                SizedBox(width: MARGIN_MEDIUM),
                Text(
                  "9,76",
                  style: TextStyle(
                      fontSize: MOVIE_DETAIL_RATING_TEXT_SIZE,
                      color: Colors.white),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: MARGIN_MEDIUM),
        Text(
          "The Wolverine",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: TEXT_HEADING_X2,
              color: Colors.white),
        ),
      ],
    );
  }
}

class MovieDetailsYearView extends StatelessWidget {
  const MovieDetailsYearView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      height: MARGIN_XXLARGE,
      decoration: BoxDecoration(
        color: PLAY_BUTTON_COLOR,
        borderRadius: BorderRadius.circular(
          MARGIN_LARGE,
        ),
      ),
      child: Center(
        child: Text(
          "2013",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class SearchButtonView extends StatelessWidget {
  const SearchButtonView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MARGIN_XXLARGE + MARGIN_MEDIUM,
        right: MARGIN_MEDIUM_2,
      ),
      child: Icon(
        Icons.search,
        size: MARGIN_XLARGE,
        color: Colors.white,
      ),
    );
  }
}

class BackButtonView extends StatelessWidget {
  final Function onTapBack;

  BackButtonView(this.onTapBack);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MARGIN_XXLARGE, left: MARGIN_MEDIUM_2),
      child: GestureDetector(
        onTap: () {
          onTapBack();
        },
        child: Container(
          width: MARGIN_XXLARGE,
          height: MARGIN_XXLARGE,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black54,
          ),
          child: Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: MARGIN_XLARGE,
          ),
        ),
      ),
    );
  }
}

class MovieDetailsImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://media.agonybooth.com/wp-content/uploads/2016/05/splash_780-923-720x340.jpg",
      fit: BoxFit.cover,
    );
  }
}
