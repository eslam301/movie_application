
import 'package:flutter/material.dart';

class BookMarkWidget extends StatefulWidget {

  BookMarkWidget({super.key});

  @override
  State<BookMarkWidget> createState() => _BookMarkWidgetState();
}

class _BookMarkWidgetState extends State<BookMarkWidget> {
  bool isBookMarked = false;

  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        isBookMarked = !isBookMarked;
        setState(() {});
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          ImageIcon(const AssetImage("assets/icons/bookmark.png"), size: 40, color: isBookMarked ? theme.primaryColor:theme.colorScheme.secondary  ,),
          Icon(isBookMarked ? Icons.check : Icons.add, size: 20, color: Colors.white,),
        ],
      ),
    );
  }
}
