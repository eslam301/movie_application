import 'package:flutter/material.dart';
import 'package:movie_application/layout/home_layout.dart';
import 'package:movie_application/screens/splash_screen/Splash_screen.dart';
import 'package:movie_application/screens/home/home_view.dart';

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
      },

    );
  }
}
