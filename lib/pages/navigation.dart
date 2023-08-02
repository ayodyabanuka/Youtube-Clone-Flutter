import 'package:flutter/material.dart';
import 'package:youtube_clone/pages/add.dart';
import 'package:youtube_clone/pages/home.dart';
import 'package:youtube_clone/pages/library.dart';
import 'package:youtube_clone/pages/shorts.dart';
import 'package:youtube_clone/pages/subscription.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const Home(),
    const Shorts(),
    const Add(),
    const Subscription(),
    const Library()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 1,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset("assets/fulllogo.png"),
        ),
        leadingWidth: 110,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Image.asset('assets/smartview.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Image.asset('assets/notifications.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Image.asset('assets/search.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7, right: 10),
            child: Image.asset('assets/user.png'),
          ),
        ],
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedIconTheme: const IconThemeData(size: 12),
        unselectedIconTheme: const IconThemeData(size: 12),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/home.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/shortsline.png'),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/add.png'), label: ""),
          BottomNavigationBarItem(
            icon: Image.asset('assets/subscription.png'),
            label: 'Subscription',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/library.png'),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
