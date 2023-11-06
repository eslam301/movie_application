import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_application/screens/browse/Widgets/MoviesCategory.dart';

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
        widget.onItemClick(widget.movies_category);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(),
        ),
        child: Stack(
          children: [
            Image.asset(widget.movies_category.categoreyImage),
            Padding(
              padding: const EdgeInsets.all(15),
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
