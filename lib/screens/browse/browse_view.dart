import 'package:flutter/material.dart';
import 'package:movie_application/screens/browse/Widgets/MoviesCategoryItem.dart';
import 'Widgets/MoviesCategory.dart';

class BrowseView extends StatefulWidget {
  const BrowseView({super.key});

  @override
  State<BrowseView> createState() => _BrowseViewState();
}

class _BrowseViewState extends State<BrowseView> {
  List<Movies_Category> genres = [
    Movies_Category(
      categoreyId: 28,
      categoreytitle: "Action",
      categoreyImage: "assets/images/Action.png",
    ),
    Movies_Category(
      categoreyId: 12,
      categoreytitle: "Adventure",
      categoreyImage: "assets/images/Adventure.png",
    ),
    Movies_Category(
      categoreyId: 16,
      categoreytitle: "Animation",
      categoreyImage: "assets/images/Animation.png",
    ),
    Movies_Category(
      categoreyId: 35,
      categoreytitle: "Comedy ",
      categoreyImage: "assets/images/Comedy.png",
    ),
    Movies_Category(
      categoreyId: 80,
      categoreytitle: "Documentary",
      categoreyImage: "assets/images/Documentary.png",
    ),
    Movies_Category(
      categoreyId: 99,
      categoreytitle: "Crime",
      categoreyImage: "assets/images/Crime.png",
    ),
    Movies_Category(
      categoreyId: 18,
      categoreytitle: "Drama",
      categoreyImage: "assets/images/Drama.png",
    ),
    Movies_Category(
      categoreyId: 10751,
      categoreytitle: "Family",
      categoreyImage: "assets/images/Family.png",
    ),
    Movies_Category(
      categoreyId: 14,
      categoreytitle: "Fantasy",
      categoreyImage: "assets/images/Fantasy.png",
    ),
    Movies_Category(
      categoreyId: 36,
      categoreytitle: "History",
      categoreyImage: "assets/images/History.png",
    ),
    Movies_Category(
      categoreyId: 27,
      categoreytitle: "Horror",
      categoreyImage: "assets/images/Horror.png",
    ),
    Movies_Category(
      categoreyId: 10402,
      categoreytitle: "Music",
      categoreyImage: "assets/images/Music.png",
    ),
    Movies_Category(
      categoreyId: 9648,
      categoreytitle: "Mystery",
      categoreyImage: "assets/images/Mystery.png",
    ),
    Movies_Category(
      categoreyId: 10749,
      categoreytitle: "Romance",
      categoreyImage: "assets/images/Romance.png",
    ),
    Movies_Category(
      categoreyId: 878,
      categoreytitle: "ScienceFiction",
      categoreyImage: "assets/images/ScienceFiction.png",
    ),
    Movies_Category(
      categoreyId: 10770,
      categoreytitle: "Tv Movie",
      categoreyImage: "assets/images/TvMovie.png",
    ),
    Movies_Category(
      categoreyId: 53,
      categoreytitle: "Thriller",
      categoreyImage: "assets/images/Thriller.png",
    ),
    Movies_Category(
      categoreyId: 10752,
      categoreytitle: "War",
      categoreyImage: "assets/images/War.png",
    ),
    Movies_Category(
      categoreyId: 37,
      categoreytitle: "Western",
      categoreyImage: "assets/images/Western.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.black,
            title: Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Text(
                selectedCategory == null
                    ? "Browse Category"
                    : selectedCategory!.categoreytitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          body: selectedCategory == null
              ? Padding(
                  padding: const EdgeInsets.all(1),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 30,
                        childAspectRatio: 9 / 7),
                    itemBuilder: (context, index) => MoviesCategoryItem(
                      movies_category: genres[index],
                      index: index,
                      onItemClick: onCategoryItemClick,
                    ),
                    itemCount: genres.length,
                  ),
                )
              : Container(
                  child: GestureDetector(
                  onTap: () {},
                ))),
    );
  }

  Movies_Category? selectedCategory;

  onCategoryItemClick(Movies_Category movies_category) {
    print(movies_category.categoreyId);
    selectedCategory = movies_category;
    setState(() {});
  }
}
