import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:portfolio/MyHomePage.dart';
import 'package:url_launcher/url_launcher.dart';

var colours = [Colors.transparent, Colors.transparent, Colors.transparent];

class page5 extends StatefulWidget {
  @override
  _page5State createState() => _page5State();
}

final Uri _emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'muskanmodi962@gmail.com',
);

class _page5State extends State<page5> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    animation.addListener(() {
      setState(() {
        animation.value;
      });
    });
    _controller.forward(from: 0.5);
  }

  @override
  void dispose() {
    // super.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (var i in l) i,
        Center(
          child: Wrap(
            //spacing: 200,
            children: [
              Container(
                //color: Colors.purple[100],
                width: 350 * animation.value,
                height: 400,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.teal[900],
                    borderRadius: BorderRadius.circular(20)),

                child: Center(
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Catch me on !!",
                          style: TextStyle(
                              fontSize: 30 * animation.value,
                              color: Colors.white),
                        ),
                      ),

                      Divider(
                        color: Colors.black,
                        thickness: 4,
                      ),

                      InkWell(
                        onTap: () {
                          launch("https://github.com/dashboard");
                        },
                        child: MouseRegion(
                          onHover: (k) {
                            setState(() {
                              colours[0] = Colors.black;
                            });
                          },
                          onExit: (k) {
                            setState(() {
                              colours[0] = Colors.transparent;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: colours[0]),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "* GitHub",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/GitHub-Mark.png"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

//Divider(color: Colors.black,thickness: 4,),

                      InkWell(
                        onTap: () {
                          launch(
                              "https://www.linkedin.com/in/muskan-modi-46b3751a7/");
                        },
                        child: MouseRegion(
                          onHover: (k) {
                            setState(() {
                              colours[1] = Colors.black;
                            });
                          },
                          onExit: (k) {
                            setState(() {
                              colours[1] = Colors.transparent;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: colours[1]),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "* LinkedIn",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/LinkedIn-Logo.png"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      //Divider(color: Colors.black,thickness: 4,),

                      InkWell(
                        onTap: () {
                          launch(_emailLaunchUri.toString());
                        },
                        child: MouseRegion(
                          onHover: (k) {
                            setState(() {
                              colours[2] = Colors.black;
                            });
                          },
                          onExit: (k) {
                            setState(() {
                              colours[2] = Colors.transparent;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: colours[2]),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "* Gmail",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/Gmail-Logo.jpeg"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
