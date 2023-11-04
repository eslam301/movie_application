import 'package:flutter/material.dart';

import '../../widgets/book_mark_widget.dart';
import '../../widgets/movie_small_panner_widget.dart';

class HomeView extends StatefulWidget {


  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool bookMarked = true;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/images/banner_movie.png",
                  ),
                  const Positioned(
                    child: Icon(Icons.play_circle, size: 80, color: Colors.white,),

                  ),
                  Positioned(
                    bottom: -40,
                    left: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dora and the lost city of gold",
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "Dora and the lost city of gold",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -80,
                    left: 21,
                    child: MovieSmallBanner(),
                  ),

                ]
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                padding: const EdgeInsets.symmetric( horizontal: 10,vertical: 20),
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondary,
                ),
                width: double.infinity,
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("New Releases Today", style: theme.textTheme.bodyLarge,),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: MovieSmallBanner(),
                        ),
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric( horizontal: 10,vertical: 20),
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondary,
                ),
                width: double.infinity,
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("New Releases Today", style: theme.textTheme.bodyLarge,),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: MovieSmallBanner(),
                        ),
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        )
    );
  }
}