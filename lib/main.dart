import 'package:flutter/material.dart';
import 'package:movie_application/layout/home_layout.dart';
import 'package:movie_application/screens/browse/browse_category_view.dart';
import 'package:movie_application/screens/home/movie_details.dart';
import 'package:movie_application/screens/splash screen/Splash_screen.dart';

import 'core/application_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      initialRoute:SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => const HomeLayout(),
        MovieDetail.routeName: (context) => const MovieDetail(),
        BrowseCategoryView.routeName: (context) => const BrowseCategoryView(),
      },

    );
  }
}
