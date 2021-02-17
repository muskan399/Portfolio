import 'package:flutter/material.dart';
import 'package:portfolio/MyHomePage.dart';
import 'package:portfolio/page2.dart';

var colour=[Colors.black,Colors.black,Colors.black,Colors.black,Colors.black,Colors.black,];
class drawer extends StatefulWidget {
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.teal[200],
        child: Column(children: [

          Container(
            color: Colors.black,
  padding: EdgeInsets.all(20),
  //margin: EdgeInsets.all(10),
  width: double.infinity,
  child: Center(child: Text("Portfolio", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900,color: Colors.white),)),),

InkWell(
  onTap: (){
    controller.animateToPage(0,duration: Duration(microseconds: 100),curve: Curves.bounceIn);
  },
  
  child:   MouseRegion(
    onHover: (k){
      setState(() {
        colour[0]=Colors.purple[900];
      });
    },
    onExit: (k){
      setState(() {
        colour[0]=Colors.black;
      });
    },
      child: Container(
    
      padding: EdgeInsets.all(10),
    
      margin: EdgeInsets.all(10),
    
      child: Row(

        children: [
          Icon(Icons.person),
          SizedBox(width: 10),
          Text("About",style: TextStyle(color: colour[0],
          fontWeight: FontWeight.w900, fontSize: 20
          ),
          ),
        ],
      ),),
  ),
),

  Divider(
    indent: 40,
    endIndent: 40,
    thickness: 3,
    color: Colors.black
  ),

  

  
InkWell(
  onTap: (){
    controller.animateToPage(1,duration: Duration(microseconds: 100),curve: Curves.bounceIn);
  },
  
  child:   MouseRegion(
    onHover: (k){
      setState(() {
        colour[1]=Colors.purple[900];
      });
    },
    onExit: (k){
      setState(() {
        colour[1]=Colors.black;
      });
    },
      child: Container(
    
      padding: EdgeInsets.all(10),
    
      margin: EdgeInsets.all(10),
    
      child: Row(

        children: [
          Icon(Icons.person),
          SizedBox(width: 10),
          Text("Skills",style: TextStyle(color: colour[1],
          fontWeight: FontWeight.w900, fontSize: 20
          ),
          ),
        ],
      ),),
  ),
),

  Divider(
    indent: 40,
    endIndent: 40,
    thickness: 3,
    color: Colors.black
  ),

InkWell(
  onTap: (){
    controller.animateToPage(2,duration: Duration(microseconds: 100),curve: Curves.bounceIn);
  },
  
  child:   MouseRegion(
    onHover: (k){
      setState(() {
        colour[2]=Colors.purple[900];
      });
    },
    onExit: (k){
      setState(() {
        colour[2]=Colors.black;
      });
    },
      child: Container(
    
      padding: EdgeInsets.all(10),
    
      margin: EdgeInsets.all(10),
    
      child: Row(

        children: [
          Icon(Icons.person),
          SizedBox(width: 10),
          Text("Projects",style: TextStyle(color: colour[2],
          fontWeight: FontWeight.w900, fontSize: 20
          ),
          ),
        ],
      ),),
  ),
),

  Divider(
    indent: 40,
    endIndent: 40,
    thickness: 3,
    color: Colors.black
  ),

InkWell(
  onTap: (){
    controller.animateToPage(3,duration: Duration(microseconds: 100),curve: Curves.bounceIn);
  },
  
  child:   MouseRegion(
    onHover: (k){
      setState(() {
        colour[3]=Colors.purple[900];
      });
    },
    onExit: (k){
      setState(() {
        colour[3]=Colors.black;
      });
    },
      child: Container(
    
      padding: EdgeInsets.all(10),
    
      margin: EdgeInsets.all(10),
    
      child: Row(

        children: [
          Icon(Icons.person),
          SizedBox(width: 10),
          Text("Articles",style: TextStyle(color: colour[3],
          fontWeight: FontWeight.w900, fontSize: 20
          ),
          ),
        ],
      ),),
  ),
),

  Divider(
    indent: 40,
    endIndent: 40,
    thickness: 3,
    color: Colors.black
  ),

InkWell(
  onTap: (){
    controller.animateToPage(4,duration: Duration(microseconds: 100),curve: Curves.bounceIn);
  },
  
  child:   MouseRegion(
    onHover: (k){
      setState(() {
        colour[4]=Colors.purple[900];
      });
    },
    onExit: (k){
      setState(() {
        colour[4]=Colors.black;
      });
    },
      child: Container(
    
      padding: EdgeInsets.all(10),
    
      margin: EdgeInsets.all(10),
    
      child: Row(

        children: [
          Icon(Icons.person),
          SizedBox(width: 10),
          Text("Contact",style: TextStyle(color: colour[4],
          fontWeight: FontWeight.w900, fontSize: 20
          ),
          ),
        ],
      ),),
  ),
),

  Divider(
    indent: 40,
    endIndent: 40,
    thickness: 3,
    color: Colors.black
  ),

  

        ],),
      )
    );
  }
}