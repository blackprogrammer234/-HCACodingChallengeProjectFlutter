import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackOverflowHomePage extends StatefulWidget {
  @override
  _StackOverflowHomePageState createState() => _StackOverflowHomePageState();
}

class _StackOverflowHomePageState extends State<StackOverflowHomePage> {
  @override
  Widget build(BuildContext context) {
    //This help with unneccessary padding that could be block from the device
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text("Home")),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "Stack Excahnge Mobile",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize:25),
                ),
              )
            ],
          )),
    );
  }
}
