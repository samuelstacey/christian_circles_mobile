import 'package:flutter/material.dart';

import '../components/app_bar.dart';
import '../components/navigation_bar.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar('About', context),
      bottomNavigationBar: createNavBar('About', context),
      body: Column(children: <Widget>[
        Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: const Text(
                "I am sam, I made this app with my bare hands",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
        )),
      ]));
  }
}
