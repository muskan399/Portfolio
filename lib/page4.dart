import 'package:flutter/material.dart';
import 'package:portfolio/MyHomePage.dart';
import 'package:portfolio/article.dart';

var colour = Colors.purple;

class page4 extends StatefulWidget {
  @override
  _page4State createState() => _page4State();
}

class _page4State extends State<page4> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    animation.addListener(() {
      setState(() {
        animation.value;
      });
    });
    _controller.forward(from: 0.5);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
    // super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 500,
      child: Center(
              child: Stack(
          children: [
            for (var i in l) i,
            Container(
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
                      child: InkWell(
                        onTap: () {
                          _controller.forward(from: 0.5);
                        },
                        child:  Container(
                           // height: MediaQuery.of(context).size.height/9,
                              padding: EdgeInsets.all(20),
                              margin: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: colour),
                              child: Text("Articles",
                                  style: TextStyle(
                                      fontSize: 30 * animation.value,
                                      color: Colors.white))),
                        
                      )),
                  Container(
                    color: Colors.black,
                    height: 450,
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(10),
                                      child: Wrap(
                        //fspacing: 50*animation.value,
                        // runAlignment: WrapAlignment.center,
                        children: [
                          Container(
                              width: animation.value * 500,
                              child: article(
                                article_title:
                                    "How Ansible is solving challenges in industries?",
                                article_desc:
                                    "Ansible is an IT automation tool which is used for Configuration Management , deployment and orchestration. It is agent less because we don't need to install any software in the target node and also it is an open source tool.",
                                article_image: "images/article1.png",
                                article_link:
                                    "https://www.linkedin.com/post/edit/6751749045468844032/",
                              )),

                          Container(
                              width: animation.value * 500,
                              child: article(
                                article_title:
                                    "Deploying Wordpress on K8s using AWS RDS for storage.",
                                article_desc:
                                    "Deploy the WordPress application on Kubernetes and AWS using terraform.",
                                article_image: "images/article2.jpeg",
                                article_link:
                                    "https://www.linkedin.com/post/edit/6709378185143836672/",
                              )),

                          Container(
                              width: animation.value * 500,
                              child: article(
                                article_title:
                                    "GCP: Integrating VPC, GKE, SQL, LB and using Terraform for IAC",
                                article_desc:
                                    "Deploy the WordPress application on Kubernetes and AWS using terraform.",
                                article_image: "images/article3.png",
                                article_link:
                                    "https://www.linkedin.com/post/edit/6704433000022724608/",
                              )),

                          Container(
                              width: animation.value * 500,
                              child: article(
                                article_title:
                                    "Deploying Wordpress on K8s using AWS RDS for storage.",
                                article_desc:
                                    "Launching nextcloud using mysql as database on EKS",
                                article_image: "images/article4.jpeg",
                                article_link:
                                    "https://www.linkedin.com/post/edit/6686918169853992960/",
                              )),

                          //article(article_title:"",article_desc: "",article_image: "images/article1.png",article_link: "",),

                          //  article(article_title:"",article_desc: "",article_image: "images/article1.png",article_link: "",),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
