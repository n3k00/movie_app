import 'package:flutter/material.dart';
import 'package:movie_app/resources/colors.dart';

class GradientView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.topCenter,
          end: AlignmentDirectional.bottomCenter,
          colors: [
            Colors.transparent,
            HOME_SCREEN_BACKGROUND_COLOR,
          ],
        ),
      ),
    );
  }
}
