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
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0) ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Stack Exchange Mobile",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "New Feeds",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
