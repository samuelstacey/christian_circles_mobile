// import 'package:christian_circles_mobile/pages/about.dart';
// import 'package:christian_circles_mobile/pages/home.dart';
// import 'package:christian_circles_mobile/pages/profile.dart';
// import 'package:christian_circles_mobile/pages/setttings.dart';
// import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title = 'Christian Circles';
//
//   @override
//   Widget build(BuildContext context) {
//     // return MaterialApp(
//     //     debugShowCheckedModeBanner: false,
//     //     title: _title,
//     //     theme: ThemeData(
//     //       primarySwatch: Colors.purple,
//     //     ),
//     //     initialRoute: '/',
//     //     routes: {
//     //       '/': (context) => const HomePage(),
//     //       '/about': (context) => const AboutPage(),
//     //       '/profile': (context) => const ProfilePage(),
//     //     },
//     //   onGenerateRoute: (settings) {
//     //     switch (settings.name) {
//     //       case '/settings':
//     //         return PageTransition(
//     //           child: const SettingsPage(),
//     //           type: PageTransitionType.scale,
//     //           alignment: Alignment.topRight,
//     //           settings: settings,
//     //         );
//     //       default:
//     //         return null;
//     //     }
//     //   },
//     // );
//   }
// }


// THESE ARE USEFUL:
// TextButton(
// onPressed: () async {
// var subjects = await AzureB2C.getSubjects();
// var info = await AzureB2C.getUserInfo(subjects![0]);
// setState(() {
// _subjects = subjects;
// _retdata = json.encode(info);
// });
// },
// child: Text("UserInfo")),

// TextButton(
// onPressed: () async {
// var token = await AzureB2C.getAccessToken(_subjects![0]);
// setState(() {
// _retdata = json.encode(token);
// });
// },
// child: Text("AccessToken")),

// TextButton(
// onPressed: () async {
// var data = await AzureB2C.policyTriggerSilently(
// _subjects![0],
// _configuration!.defaultAuthority.policyName,
// _configuration!.defaultScopes!,
// );
// setState(() {
// _retdata = data;
// });
// },
// child: Text("Refresh")),

// TextButton(
// onPressed: () async {
// var data = await AzureB2C.signOut(_subjects![0]);
// setState(() {
// _retdata = data;
// });
// },
// child: Text("LogOut")),