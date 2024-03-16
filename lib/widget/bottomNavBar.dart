import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        showUnselectedLabels: true,
        unselectedFontSize: 4,
        selectedFontSize: 4,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Image.asset(
                "assets/Card.jpg",
                height: height * 0.06,
              ),
              activeIcon: Image.asset(
                "assets/Card.jpg",
                // color: Color(0xff6F6E7C),
                height: height * 0.06,
              ),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Image.asset(
                "assets/bonfire.jpg",
                height: height * 0.06,
              ),
              activeIcon: Image.asset(
                "assets/bonfire.jpg",
                height: height * 0.06,
              ),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Image.asset(
                "assets/Chat.jpg",
                height: height * 0.06,
              ),
              activeIcon: Image.asset(
                "assets/Chat.jpg",
                height: height * 0.06,
              ),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Image.asset(
                "assets/User.jpg",
                height: height * 0.06,
              ),
              activeIcon: Image.asset(
                "assets/User.jpg",
                height: height * 0.06,
              ),
              label: ''),
        ]);
  }
}

