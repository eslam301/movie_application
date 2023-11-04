import 'package:flutter/material.dart';
import 'package:movie_application/layout/home_layout.dart';
import 'package:movie_application/screens/home/home_view.dart';

import 'Widgets/MoviesCategory.dart';

class BrowseView extends StatefulWidget {
  const BrowseView({super.key});

  @override
  State<BrowseView> createState() => _BrowseViewState();
}

class _BrowseViewState extends State<BrowseView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 90,
          title: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              "Browse Category ",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.start,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          MoviesCategory(
            text1: "Action",
            title1: "assets/images/Action.png",
            text2: "Adventure",
            title2: "assets/images/Adventure.png",
          ),
          SizedBox(height: 30),
          MoviesCategory(
            text1: "Animation",
            title1: "assets/images/Animation.png",
            text2: "Comedy",
            title2: "assets/images/Comedy.png",
          ),
          SizedBox(height: 30),
          MoviesCategory(
            text1: "Documentary",
            title1: "assets/images/Documentary.png",
            text2: "Crime",
            title2: "assets/images/Crime.png",
          ),
          SizedBox(height: 30),
          MoviesCategory(
            text1: "Drama",
            title1: "assets/images/Drama.png",
            text2: "Family",
            title2: "assets/images/Family.png",
          ),
          SizedBox(height: 30),
          MoviesCategory(
            text1: "Fantasy",
            title1: "assets/images/Fantasy.png",
            text2: "History",
            title2: "assets/images/History.png",
          ),
          SizedBox(height: 30),
          MoviesCategory(
            text1: "Horror",
            title1: "assets/images/Horror.png",
            text2: "Music",
            title2: "assets/images/Music.png",
          ),
          SizedBox(height: 30),
          MoviesCategory(
            text1: "Mystery",
            title1: "assets/images/Mystery.png",
            text2: "Romance",
            title2: "assets/images/Romance.png",
          ),
          SizedBox(height: 30),
          MoviesCategory(
            text1: "Science\nFiction",
            title1: "assets/images/ScienceFiction.png",
            text2: "TV Movie",
            title2: "assets/images/TvMovie.png",
          ),
          SizedBox(height: 30),
          MoviesCategory(
            text1: "Thriller",
            title1: "assets/images/Thriller.png",
            text2: "War",
            title2: "assets/images/War.png",
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 195),
              height: 110,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/Western.png",
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 70, left: 60),
                    child: Text("Western",
                        style: theme.textTheme.titleLarge!
                            .copyWith(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ])));
  }
}