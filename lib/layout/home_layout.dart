import 'package:flutter/material.dart';
import '../screens/browse/browse_view.dart';
import '../screens/home/home_view.dart';
import '../screens/search/search_view.dart';
import '../screens/watchlist/watch_list_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "homeLayout";
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget> pages = [const HomeView(), const SearchView(), const BrowseView(), const WatchListView()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: pages[selectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 13,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage("assets/icons/Home icon.png")
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage(
                        "assets/icons/search-2.png")
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage(
                        "assets/icons/Icon material-movie.png")
                ),
                label: "Browse"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage(
                        "assets/icons/Icon ionic-md-bookmarks.png")
                ),
                label: "Watchlist"),
          ],
        ),
      ),
    );
  }
}
