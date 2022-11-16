import 'package:flutter/material.dart';

import '../components/app_bar.dart';
import '../components/navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar('Home', context),
      bottomNavigationBar: createNavBar('Home', context),
      body: Column(children: <Widget>[
        Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: const Text(
                "Welcome home",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
        )),
      ]));
  }
}
