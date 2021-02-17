import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio/project.dart';
var colour3=Colors.purple;
var projects=[
  
  project(project_name: "AI based Technical Assistant in C",project_desc: "An assistant that integrates pre-created and custom created API’s for different services and provides one single interface for the user and uses intelligence behind the scene to identify the instruction.", colour_box: [Colors.red,Colors.pink,Colors.green,Colors.blue,Colors.blueGrey], project_tech: ["NLP", "AWS CLI", "C programming", "CGI", "Terraform"], project_linkedin: "", project_github: ""),
   project(project_name: "",project_desc: "", colour_box: [], project_tech: [], project_linkedin: "", project_github: ""),
    project(project_name: "",project_desc: "", colour_box: [], project_tech: [], project_linkedin: "", project_github: ""),
     project(project_name: "",project_desc: "", colour_box: [], project_tech: [], project_linkedin: "", project_github: ""),

  ];
class page3 extends StatefulWidget {
  @override
  _page3State createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {

return SingleChildScrollView(
  child:   Column(children: [
  
  
  Wrap(
  
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
    children: [
  
  
  
      Column(
        children: [
          Container(
            margin: EdgeInsets.all(40),
            child: CircleAvatar(backgroundImage: AssetImage("images/day-night.gif"),radius: 200,)),
          MouseRegion(
  
  
  
    onExit: (k){
  
        setState(() {
  
          colour3=Colors.purple;
  
        });
  
    },
  
  
  
    onHover: (k){
  
  setState(() {
  
    colour3=Colors.teal;
  
  });
  
    },
  
    child:   Container(
  
    
  
        padding: EdgeInsets.all(20),
  
    
  
        margin: EdgeInsets.all(20),
  
    
  
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: colour3),
  
    
  
        child: Text("Projects", style: TextStyle(fontSize: 30, color: Colors.white)))
  
  ),
  
        ],
      ),
  
          Expanded(
                      child: Container(
  
      
  
        
  
      width: 800,
  
     height: 500,
  
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.width*30/1500),
  
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),

            child:  CarouselSlider(
  
                options: CarouselOptions( autoPlay: true,
                enlargeCenterPage: true,
              
               height: 550,

                viewportFraction: 1
                ),
  
    
                items: [1,2,3,4].map((i) {
  
    
                  return Builder(
  
                    builder: (BuildContext context) {

  
                      return projects[i-1];
  
      
  
                    },
  
  
  
                  );
  
      
  
                }).toList(),
  
  
              ),
      
  
      ),
          ),
  
    ],
  
  ),
  
  
  
  
  
  
  
  ],),
);

    
  }
}