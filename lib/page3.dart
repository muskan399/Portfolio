import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio/project.dart';

var colour3 = Colors.purple;
var projects = [
  project(
      project_name: "AI based Technical Assistant in C",
      project_desc:
          "An assistant that integrates pre-created and custom created API’s for different services and provides one single interface for the user and uses intelligence behind the scene to identify the instruction.",
      colour_box: [
        Colors.red,
        Colors.pink,
        Colors.green,
        Colors.blue,
        Colors.blueGrey
      ],
      project_tech: ["NLP", "AWS CLI", "C programming", "CGI", "Terraform"],
      project_linkedin: "",
      project_github: ""),
  project(
      project_name: "MobTerminal- Remote Desktop App",
      project_desc:
          " An app using which one can easily run instructions in their system remotely from any location.",
      colour_box: [
        Colors.red,
        Colors.pink,
        Colors.green,
      ],
      project_tech: ["Flutter", "Amazon Web Services", "Firebase"],
      project_linkedin:
          "https://www.linkedin.com/posts/muskan-modi-46b3751a7_flutter-rightmentor-activity-6715139814196318208-Tz0k/?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base%3Binc%2Byl4LRUWgpXi2G50xgw%3D%3D",
      project_github: "https://github.com/muskan399/MobTerminal"),
  project(
      project_name: "MultiInterfaces - Web Utility for various technical task",
      project_desc:
          "A web interface that provides multiple services using one single interface. Using this user can easily interact with Docker, Cloud Services and some normal services as well.",
      colour_box: [
        Colors.red,
        Colors.pink,
        Colors.green,
        Colors.blue,
        Colors.blueGrey
      ],
      project_tech: [
        "BootStrap",
        "Docker",
        "AWS",
        "Python-CGI",
        "Apache Web Server"
      ],
      project_linkedin:
          "https://www.linkedin.com/feed/update/urn:li:activity:6726373995429679104/",
      project_github: "https://github.com/muskan399/CGI_based_menu"),
  project(
      project_name: "MyCloud - Own cloud model",
      project_desc:
          "Deployed a cloud model using Kubernetes cluster with a load balancing capability.",
      colour_box: [
        Colors.red,
        Colors.pink,
        Colors.green,
        Colors.blue,
      ],
      project_tech: ["Kubernetes", "Elastic Load Balancer", "MySQL", "Docker"],
      project_linkedin:
          "https://www.linkedin.com/post/edit/6686918169853992960/",
      project_github: "https://github.com/muskan399/Hosting-NextCloud"),
];

class page3 extends StatefulWidget {
  @override
  _page3State createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    var w = [
      Column(
        children: [
          Container(
              margin: EdgeInsets.all(40),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/day-night.gif"),
                radius: 200,
              )),
          MouseRegion(
              onExit: (k) {
                setState(() {
                  colour3 = Colors.purple;
                });
              },
              onHover: (k) {
                setState(() {
                  colour3 = Colors.teal;
                });
              },
              child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: colour3),
                  child: Text("Projects",
                      style: TextStyle(fontSize: 30, color: Colors.white)))),
        ],
      ),
      Container(
        width: 800,
        height: 600,
        margin:
            EdgeInsets.only(top: MediaQuery.of(context).size.width * 30 / 1500),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
        child: CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              // enlargeCenterPage: true,
              height: 550,
              viewportFraction: 1),
          items: [1, 2, 3, 4].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return projects[i - 1];
              },
            );
          }).toList(),
        ),
      ),
    ];
    return SingleChildScrollView(
      child: MediaQuery.of(context).size.width < 900
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: w,
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: w,
            ),
    );
  }
}
