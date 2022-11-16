import 'package:christian_circles_mobile/pages/setttings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

AppBar createAppBar(String title, BuildContext context) {
  return AppBar(
    title: Text(title),
    backgroundColor: Colors.purple,
    automaticallyImplyLeading: false,
    actions: [
      IconButton(
        icon: const FaIcon(FontAwesomeIcons.wrench),
        tooltip: 'Settings',
        onPressed: () {
          Navigator.pushNamed(context, '/settings');
        },
      ),
    ],
  );
}
