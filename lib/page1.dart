import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/MyHomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class page1 extends StatefulWidget {
  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      child: Container(
          child: Stack(children: [
        for (var i in l) i,
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(height: 100,),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                       color: Colors.black,
                      // margin: EdgeInsets.all(50),
                      padding: EdgeInsets.all(10),
                      width: 700,
                      alignment: Alignment.center,
                      child: Column(children: [
                        Row(
                          children: [
                            Container(
                              child: RichText(
                                text: TextSpan(
                                    text: "Hi everyone,",
                                    style: TextStyle(
                                        fontSize: 42 *
                                            MediaQuery.of(context).size.width /
                                            1500,
                                        color: Colors.white),
                                    children: [
                                      TextSpan(
                                          text: "I'm Muskan",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ]),
                              ),
                            ),
                            Container(
                                height: 60,
                                width: 60,
                                child: Image.network(
                                    "https://raw.githubusercontent.com/muskan399/first/master/hiii.gif"))
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "I'm currently pursuing B.Tech. Computer Science from the University of Petroleum and Energy Studies. I'm more inclined towards Cloud(AWS, OpenStack, GCP) and DevOps. I have worked with Redhat Ansible and OpenShift. ",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                launch(
                                    "https://drive.google.com/file/d/1if_qWjtqMjRJapbkahy4FUqP8HoGsjH-/view?usp=sharing");
                              },
                              child: Container(
                                margin: EdgeInsets.all(20),
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.purple),
                                child: Text("See Resume"),
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  launch("https://github.com/dashboard");
                                },
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/GitHub-Mark.png"),
                                )),
                            SizedBox(width: 10),
                            InkWell(
                                onTap: () {
                                  launch(
                                      "https://www.linkedin.com/in/muskan-modi-46b3751a7/");
                                },
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/LinkedIn-Logo.png"),
                                )),
                          ],
                        )
                      ]),
                    ),
                    SizedBox(width: 30),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            //   color: Colors.red,
                            // padding: EdgeInsets.all(70),
                            child: CircleAvatar(
                              radius: 150,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage("images/sleepygirl.gif"),
                            ),
                          ),
                          SizedBox(height: 10),
                          TypewriterAnimatedTextKit(
                            speed: Duration(milliseconds: 100),
                            totalRepeatCount: 3,
                            text: [
                              "I'm a Developer",
                              "I'm a Cloud Enthusiast",
                              "I'm currently exploring DevOps tools",
                            //  "I have quite a interest in automation"
                            ],
                            textStyle: TextStyle(
                                color: Colors.pink[100],
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            pause: Duration(milliseconds: 100),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          ),
                        ])
                  ]),
            ],
          ),
        )
      ])),
    );
  }
}
