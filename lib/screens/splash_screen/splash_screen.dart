import 'dart:async';
import 'package:flutter/material.dart';
import 'package:movie_application/layout/home_layout.dart';




class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash_screen';
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(HomeLayout.routeName);
    });
    return Scaffold(
      body: Image.asset("assets/images/splash.png"),
    );
  }
}
