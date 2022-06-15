import 'package:flutter/material.dart';
import 'package:hca_coding_project_flutter/routeGenerator.dart';
import 'package:hca_coding_project_flutter/ui/home_view/stackoverflow_home_page.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0x333333)),
      home: StackOverflowHomePage()
    );
  }
}
