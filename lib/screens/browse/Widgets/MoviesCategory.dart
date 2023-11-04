import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoviesCategory extends StatelessWidget {
  String text1;
  String title1;
  String text2;
  String title2;

  MoviesCategory(
      {super.key,
      required this.text1,
      required this.title1,
      required this.text2,
      required this.title2});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
        height: 110,
        margin: EdgeInsets.only(left: 11),
        child: Row(children: [
          Stack(children: [
            Image.asset(title1),
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 60),
              child: Text(
                text1,
                style: theme.textTheme.titleLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ]),
          SizedBox(width: 15),
          Container(
              height: 110,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Image.asset(title2),
                      Padding(
                        padding: const EdgeInsets.only(top: 80, left: 60),
                        child: Text(
                          text2,
                          style: theme.textTheme.titleLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ]));
  }
}
