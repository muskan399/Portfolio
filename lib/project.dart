import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

 class project extends StatefulWidget {
   final project_name, project_desc,project_github,project_linkedin,colour_box,project_tech;
  project({Key key,this.project_desc,this.project_github,this.project_linkedin,this.project_name,this.colour_box,this.project_tech}):super (key:key);
  @override
  _projectState createState() => _projectState();
}

class _projectState extends State<project> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      color: Colors.purple[100],
      
      child: Column(children: [
Container(
  padding: EdgeInsets.all(20),
  child: Text(widget.project_name,style: TextStyle(color: Colors.black,fontSize: 50*(MediaQuery.of(context).size.width)/1500,fontWeight: FontWeight.w900),),),
  SizedBox(height: 10),
  Container(
    
    child: Text(
    widget.project_desc,style: TextStyle(color: Colors.black),
  ),),
  SizedBox(height: 10),
  
  Wrap(children: [
    for (var i=0;i<widget.project_tech.length;i++)
    Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: widget.colour_box[i]),
      child: Text(widget.project_tech[i],style: TextStyle(color: Colors.black)),)
  ],),
  SizedBox(height: 20),

  Container(child: Text("Technology Used"),),
  SizedBox(height: 20),

  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    

    InkWell(
      onTap: (){launch(widget.project_linkedin);},
      child: CircleAvatar(backgroundImage: AssetImage("images/Linkedin-Logo.png"),)),
    SizedBox(width: 6),
    InkWell(
      onTap: (){launch(widget.project_github);},
      child: CircleAvatar(backgroundImage: AssetImage("images/GitHub-Mark.png"),)),
  ],)


      ],),
    );
  }
}