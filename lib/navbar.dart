import 'package:flutter/material.dart';
import 'package:portfolio/MyHomePage.dart';

AppBar navbar() {
  return AppBar(
    title: Text("Muskan Modi"),
    backgroundColor: Colors.black,
    actions: [
      InkWell(
        onTap: () {
          controller.animateToPage(0,
              duration: Duration(microseconds: 100), curve: Curves.bounceIn);
        },
        child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Text("About")),
      ),
      SizedBox(width: 10),
      InkWell(
        onTap: () {
          controller.animateToPage(1,
              duration: Duration(microseconds: 100), curve: Curves.bounceIn);
        },
        child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Text("Skills")),
      ),
      SizedBox(width: 10),
      InkWell(
        onTap: () {
          controller.animateToPage(2,
              duration: Duration(microseconds: 100), curve: Curves.bounceIn);
        },
        child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Text("Projects")),
      ),
      SizedBox(width: 10),
      InkWell(
        onTap: () {
          controller.animateToPage(3,
              duration: Duration(microseconds: 100), curve: Curves.bounceIn);
        },
        child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Text("Articles")),
      ),
      SizedBox(width: 10),
      InkWell(
        onTap: () {
          controller.animateToPage(4,
              duration: Duration(microseconds: 100), curve: Curves.bounceIn);
        },
        child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Text("Contact")),
      ),
      SizedBox(width: 10),
    ],
  );
}
