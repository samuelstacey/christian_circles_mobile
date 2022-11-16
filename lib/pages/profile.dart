import 'package:flutter/material.dart';

import '../components/app_bar.dart';
import '../components/navigation_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar('Profile', context),
      bottomNavigationBar: createNavBar('Profile', context),
      body: Column(children: <Widget>[
        Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: const Text(
                "this is you",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
        )),
      ]));
  }
}
