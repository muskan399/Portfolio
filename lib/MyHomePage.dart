import 'dart:math';
import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/navbar.dart';
import 'package:portfolio/drawer.dart';
import 'package:portfolio/page1.dart';
//import 'package:portfolio/page1.dartddd';
import 'package:portfolio/page2.dart';
import 'package:portfolio/page3.dart';
import 'package:portfolio/page4.dart';
import 'package:portfolio/page5.dart';

var animation, a;
AnimationController _controller, _controller2, _controller3;
var animation2, animation3;

List<Widget> l = [];
var controller = PageController(
  initialPage: 0,
);

//https://developerfolio.js.org/#experience

class Change_Info extends StatefulWidget {
  @override
  _Change_InfoState createState() => _Change_InfoState();
}

class _Change_InfoState extends State<Change_Info>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _controller2 =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _controller3 =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    animation2 = CurvedAnimation(parent: _controller2, curve: Curves.easeIn);
    animation3 = CurvedAnimation(parent: _controller3, curve: Curves.easeIn);

    if (a == 1)
      _controller.forward(from: 0.5);
    else if (a == 2)
      _controller2.forward(from: 0.5);
    else if (a == 3) _controller3.forward(from: 0.5);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    l.clear();
    for (var i = 0; i < 60; i++) {
      l.add(Positioned(
        top: 1000.0 * Random().nextDouble(),
        left: 1500.0 * Random().nextDouble(),
        child: RotationTransition(
          turns: animation,
          child: InkWell(
            onTap: () {},
            onHover: (k) {
              if (k == true) {
                setState(() {
                  _controller.forward(from: 0.5);
                  // print("CLickeddddddddddddd");
                });
              }
            },
            child: Container(
                child: Opacity(
              opacity: animation.value + 0.3,
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 20 * Random().nextDouble() + (animation.value * 10),
              ),
            )),
          ),
        ),
      ));
    }

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: MediaQuery.of(context).size.width >= 900
            ? navbar()
            : AppBar(backgroundColor: Colors.black),
        drawer: MediaQuery.of(context).size.width < 900 ? drawer() : null,
        body: PageView(
            controller: controller,
            scrollDirection: Axis.vertical,
            children: [page1(), page2(), page3(), page4(), page5()]));
  }
}

class Star {
  var i;
  Widget start_build() {
    for (i = 0; i < 100; i++) {
      l[i] = Positioned(
        top: 500.0 * Random().nextDouble(),
        left: 700.0 * Random().nextDouble(),
        child: Container(
            padding: EdgeInsets.all(10 + (i * 10)), child: Icon(Icons.star)),
      );
    }
  }
}
