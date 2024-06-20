import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
//import 'package:flutterapp/pages/categories.dart';
import 'package:flutterapp/pages/home.dart';
import 'package:flutterapp/pages/search.dart';
import 'package:flutterapp/pages/favorites.dart';
import 'package:flutterapp/pages/profile.dart'; // Import the new profile page

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;
  late List<Widget> pages;
  late Home home;
  //late Categories categories;
  late Search search;
  late Favorites favorites;
  late Profile profile; // Define the new profile page
  late Widget currentPage;

  @override
  void initState() {
    home = Home();
    search = Search();
    //categories = Categories();
    favorites = Favorites();
    profile = Profile(); // Initialize the new profile page
    pages = [home, search, favorites, profile];
    currentPage = home;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: const Color.fromARGB(255, 35, 227, 172),
        backgroundColor: Colors.white,
        height: 65,
        color: const Color.fromARGB(255, 178, 176, 176),
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index; // Update the current tab index
            currentPage = pages[currentTabIndex]; // Update the current page
          });
        },
        items: const [
          Icon(
            Icons.home_outlined,
            color: Color.fromARGB(255, 27, 21, 21),
          ),
          Icon(
            Icons.shopping_cart_outlined,
            color: Color.fromARGB(255, 27, 21, 21),
          ),
          Icon(
            Icons.favorite_outlined,
            color: Color.fromARGB(255, 27, 21, 21),
          ),
          Icon(
            Icons.person_outlined,
            color: Color.fromARGB(255, 27, 21, 21),
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
