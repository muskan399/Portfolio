import 'package:flutter/material.dart';
import 'package:portfolio/article.dart';
var colour=Colors.purple;
class page4 extends StatefulWidget {
  @override
  _page4State createState() => _page4State();
}

class _page4State extends State<page4>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
        child: Column(
          children: [

            MouseRegion(

  onExit: (k){
        setState(() {
          colour=Colors.purple;
        });
  },

  onHover: (k){
setState(() {
  colour=Colors.teal;
});
  },
  child:   Container(
  
        padding: EdgeInsets.all(20),
  
        margin: EdgeInsets.all(30),
  
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: colour),
  
        child: Text("MySkills", style: TextStyle(fontSize: 30, color: Colors.white)))
),

            Wrap(children: [
              article(article_title:"How Ansible is solving challenges in industries?",article_desc: "Ansible is an IT automation tool which is used for Configuration Management , deployment and orchestration. It is agent less because we don't need to install any software in the target node and also it is an open source tool.",article_image: "images/article1.png",article_link: "https://www.linkedin.com/post/edit/6751749045468844032/",),

                  article(article_title:"Deploying Wordpress on K8s using AWS RDS for storage.",article_desc: "Deploy the WordPress application on Kubernetes and AWS using terraform.",article_image: "images/article2.jpeg",article_link: "https://www.linkedin.com/post/edit/6709378185143836672/",),

                      //article(article_title:"",article_desc: "",article_image: "images/article1.png",article_link: "",),

                        //  article(article_title:"",article_desc: "",article_image: "images/article1.png",article_link: "",),
            ],),
          ],
        ),
      ),
    );
  }
}