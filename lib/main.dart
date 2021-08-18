import 'package:emailclone/pages/compose.dart';
import 'package:emailclone/pages/mainpage.dart';
import 'package:emailclone/pages/meetpage.dart';
import 'package:emailclone/pages/tabscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      // theme: ThemeData(
      //   primaryColor: Colors.black54,
      // ),
      home: TabScreen(),
      routes: {
        Meetpage.routename: (ctx) => Meetpage(),
        mainPage.routename: (ctx) => mainPage(),
        Compose.routename: (ctx) => Compose(),
      },
    );
  }
}
