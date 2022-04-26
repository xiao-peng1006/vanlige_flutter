import 'package:flutter/material.dart';
import 'package:myapp/ui/home_page.dart';
import 'package:myapp/ui/learn_more_page.dart';
import 'package:myapp/ui/about_page.dart';
import 'package:myapp/ui/login_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/learn-more': (context) => LearnMorePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
