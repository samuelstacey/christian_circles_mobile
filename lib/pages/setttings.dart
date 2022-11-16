import 'package:flutter/material.dart';

import '../components/app_bar.dart';
import '../components/navigation_bar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar('Settings', context),
      bottomNavigationBar: createNavBar('Settings', context),
      body: Column(children: <Widget>[
        Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: const Text(
                "This is the settings",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
        )),
      ]));
  }
}
