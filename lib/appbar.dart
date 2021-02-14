import 'package:flutter/material.dart';
import 'package:portfolio/MyHomePage.dart';

AppBar navbar()
{
  return AppBar(title: Text("Myportfolio"),
  
  actions: [
      InkWell(
        onTap: (){
        controller.animateToPage(0,duration: Duration(microseconds: 100),curve: Curves.bounceIn);
      },
        child: Row(children: [
            Text("About"),
            Icon(Icons.person)

      ],),
    ),
    SizedBox(
      width: 10
    ),
    InkWell(
        onTap: (){
        controller.animateToPage(1,duration: Duration(microseconds: 100),curve: Curves.bounceIn);
      },
        child: Row(children: [
            Text("Skills"),
            Icon(Icons.person)

      ],),
    ),
     SizedBox(
      width: 10
    ),
    InkWell(
        onTap: (){
        controller.animateToPage(2,duration: Duration(microseconds: 100),curve: Curves.bounceIn);
      },
        child: Row(children: [
            Text("Experience"),
            Icon(Icons.person)

      ],),
    ),
     SizedBox(
      width: 10
    ),
    InkWell(
        onTap: (){
        controller.animateToPage(3,duration: Duration(microseconds: 100),curve: Curves.bounceIn);
      },
        child: Row(children: [
            Text("Education"),
            Icon(Icons.person)

      ],),
    ),
     SizedBox(
      width: 10
    ),
    InkWell(
        onTap: (){
        controller.animateToPage(4,duration: Duration(microseconds: 100),curve: Curves.bounceIn);
      },
        child: Row(children: [
            Text("Contact"),
            Icon(Icons.person)

      ],),
    ),
     SizedBox(
      width: 10
    ),
    InkWell(
        onTap: (){
        controller.animateToPage(1,duration: Duration(microseconds: 100),curve: Curves.bounceIn);
      },
        child: Row(children: [
            Text("About"),
            Icon(Icons.person)

      ],),
    )
  ],
  );
}