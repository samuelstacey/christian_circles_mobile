import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

BottomNavigationBar createNavBar(String title, BuildContext context) {
  return BottomNavigationBar(
    onTap: (index) {
      if (index == 0) {
        Navigator.pushNamed(context, '/');
      } else if (index == 1) {
        Navigator.pushNamed(context, '/profile');
      } else if (index == 2) {
        Navigator.pushNamed(context, '/about');
      }
    },
    selectedItemColor: Colors.purple,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.user),
        label: 'Profile',
      ),
      BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.circleInfo),
        label: 'About',
      ),
    ],
  );
}