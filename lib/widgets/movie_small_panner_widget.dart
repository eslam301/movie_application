import 'package:flutter/cupertino.dart';

import '../screens/home/movie_details.dart';
import 'book_mark_widget.dart';

class MovieSmallBanner extends StatelessWidget {

  const MovieSmallBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        Navigator.pushNamed(context, MovieDetail.routeName);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),

        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/small_banner.png",
            ),
            BookMarkWidget(),
          ],
        ),
      ),
    );
  }
}
