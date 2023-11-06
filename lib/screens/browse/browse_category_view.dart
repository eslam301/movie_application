import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrowseCategoryView extends StatelessWidget {
  static String routeName = "/browse_category_view";
  const BrowseCategoryView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Browse Category",
        ),
      ),
      body: Center(
        child: Text(
          "Browse Category",
        ),
      )
    );
  }
}
