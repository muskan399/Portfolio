import 'package:flutter/material.dart';
import 'package:portfolio/skills.dart';

var colour = Colors.purple;

class page2 extends StatefulWidget {
  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            MouseRegion(
                onExit: (k) {
                  setState(() {
                    colour = Colors.purple;
                  });
                },
                onHover: (k) {
                  setState(() {
                    colour = Colors.teal;
                  });
                },
                child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: colour),
                    child: Text("MySkills",
                        style: TextStyle(fontSize: 30, color: Colors.white)))),
            Wrap(
              children: [
                skill(
                  main_skill_name: "FronEnd-BackEnd",
                  skill_name: [
                    "HTML",
                    "CSS",
                    "BootStrap",
                    "Flutter",
                    "Firebase"
                  ],
                  image_name: [
                    "images/html.png",
                    "images/css.png",
                    "images/bootstrap.png",
                    "images/flutter.png",
                    "images/firebase.png"
                  ],
                ),
                skill(main_skill_name: "Cloud TechStack", skill_name: [
                  "AWS",
                  "GCP",
                  "OpenStack"
                ], image_name: [
                  "images/aws.png",
                  "images/gcp.png",
                  "images/openstack.jpeg"
                ]),
                skill(
                  main_skill_name: "DevOps TechStack",
                  skill_name: [
                    "Docker",
                    "Kubernetes",
                    "Ansible",
                    "OpenShift",
                    "Terraform"
                  ],
                  image_name: [
                    "images/docker.png",
                    "images/k8s.png",
                    "images/ansible.png",
                    "images/openshift.png",
                    "images/tf.png"
                  ],
                ),
                skill(
                  main_skill_name: "Programming Languages",
                  skill_name: ["C++", "Python", "Dart", "HashiCorp"],
                  image_name: [
                    "images/aws.png",
                    "images/css.png",
                    "images/aws.png",
                    "images/aws.png"
                  ],
                ),
                skill(
                  main_skill_name: "BigData",
                  skill_name: ["Hadoop"],
                  image_name: ["images/aws.png"],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

/*
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/MyHomePage.dart';


//Stack page1(BuildContext context){

  var w=[
                        Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.all(40),
                         width: 700,
                         //height: 300,
                         //color: Colors.deepPurple[900],
                          child: Column(
                              children: [
                                 Row(
                                   children: [

                                     Container(
                   color: Colors.black,
                   margin: EdgeInsets.all(20),
                   child: RichText(
                       text: TextSpan(
                         text: "Hi everyone,",style: TextStyle(fontSize: 42*MediaQuery.of(context).size.width/1500,color: Colors.white),
                         children: [
                             TextSpan(text: "I'm Muskan", style: TextStyle(
                               color: Colors.white
                             )),
                            
                         ]
                       
                         
      
                       ),
                     )
                   ,),
                   Container(
                     height: 60,
                     width: 60,
                     //child: Image.network("https://raw.githubusercontent.com/muskan399/first/master/hiii.gif")
                     )
                                   ],
                                 ),
                                 Container(
                                   padding: EdgeInsets.all(20),
                                   child: Text("A passionate Full Stack Software Developer 🚀 having an experience of building Web and Mobile applications with JavaScript / Reactjs / Nodejs / React Native and some other cool libraries and frameworks.",
                                   style: TextStyle(fontSize: 22,
                                   color: Colors.white
                                   ),
                                   
                                   ),
                                 )
                              ]
                            ),
                          ),
                       Center(
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             CircleAvatar(
                               radius: 150,
                               backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/sleepygirl.gif"),
                
         ),
                             
                             SizedBox(
                               height: 40
                             ),
                             
                             TypewriterAnimatedTextKit(
  speed: Duration(milliseconds: 100),
  totalRepeatCount: 4,
  text: ["I'm a developer", "I'm a cloud enthusisath", "I'm freaked out about Automation", "I'm interested in containerizarion technologies"],
  textStyle: TextStyle(
    color: Colors.pink[100],
    fontSize: 20.0, fontWeight: FontWeight.bold),
  pause: Duration(milliseconds: 100),
  displayFullTextOnTap: true,
  stopPauseOnTap: true,
),
//Image.network("http://cdn.lowgif.com/full/23362f46b731f500-hand-waving-goodbye-clipart-cliparthut-free-clipart.gif")
                           
                           ],
                         ),
                       ),
                        
                      
            ];

      return Stack(
        children : [
          for (var i in l)
          i,
          MediaQuery.of(context).size.width>700?
                             Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           // crossAxisAlignment: CrossAxisAlignment.center,
                                children: w
                      ): SingleChildScrollView(child: Column(children: w,))
        ]
      );
     }



*/
