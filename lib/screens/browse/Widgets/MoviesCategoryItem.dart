import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_application/screens/browse/Widgets/MoviesCategory.dart';
import 'package:movie_application/screens/browse/browse_category_view.dart';

import '../../home/movie_details.dart';

class MoviesCategoryItem extends StatefulWidget {
  final Movies_Category movies_category;
  final int index;
  final Function onItemClick;

  MoviesCategoryItem(
      {super.key,
      required this.movies_category,
      required this.index,
      required this.onItemClick});

  @override
  State<MoviesCategoryItem> createState() => _MoviesCategoryItemState();
}

class _MoviesCategoryItemState extends State<MoviesCategoryItem> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, BrowseCategoryView.routeName.toString(), arguments: {
          "index": widget.index,
          "movies_category": widget.movies_category

        });
      },
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: theme.colorScheme.secondary,
          image: DecorationImage(
            image: AssetImage(widget.movies_category.categoreyImage),
            fit: BoxFit.cover,
          )
        ),

        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity (0.9),
                    Colors.black.withOpacity (0.3),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Center(
              child: Text(
                widget.movies_category.categoreytitle,
                style: theme.textTheme.titleLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
