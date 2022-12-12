import 'package:flutter/material.dart';
import 'package:instaclone/pages/home.dart';
import 'package:instaclone/pages/likes.dart';
import 'package:instaclone/pages/profile.dart';
import 'package:instaclone/pages/reels.dart';
import 'package:instaclone/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  //navigate arroud the bottom nav bar
  void _navigateBottomNavbar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  //diffrent pages to navigate to
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserLikes(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: (
      //     // child: Text("body here"),
      //     ),
      body: _children[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _navigateBottomNavbar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'reels'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop_2_rounded), label: 'Likes'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
