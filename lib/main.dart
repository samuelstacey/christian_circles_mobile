import 'package:christian_circles_mobile/pages/about.dart';
import 'package:christian_circles_mobile/pages/home.dart';
import 'package:christian_circles_mobile/pages/profile.dart';
import 'package:christian_circles_mobile/pages/setttings.dart';
import 'package:christian_circles_mobile/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Christian Circles",
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const WelcomePage(),
          '/home': (context) => const HomePage(),
          '/about': (context) => const AboutPage(),
          '/profile': (context) => const ProfilePage(),
        },
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/settings':
              return PageTransition(
                child: const SettingsPage(),
                type: PageTransitionType.scale,
                alignment: Alignment.topRight,
                settings: settings,
              );
            default:
              return null;
          }
        });
  }
}
