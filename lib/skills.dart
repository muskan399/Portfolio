import 'package:flutter/material.dart';

var colour2=Colors.blue[500];
class skill extends StatefulWidget {
  final skill_name, main_skill_name,image_name;
  skill({Key key,this.skill_name,this.main_skill_name,this.image_name}):super (key:key);
  @override
  _skillState createState() => _skillState();
}

class _skillState extends State<skill> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 450,
      child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

MouseRegion(

  onExit: (k){
      setState(() {
        colour2=Colors.blue[500];
      });
  },

  onHover: (k){
setState(() {
  colour2=Colors.teal;
}
  );},
  
  child:   Container(
  
    padding: EdgeInsets.all(20),
  
    margin: EdgeInsets.all(10),
  
    decoration: BoxDecoration(color: colour2, borderRadius: BorderRadius.circular(20)),
  
    child: Text(widget.main_skill_name,style: TextStyle(fontSize: 20,color: Colors.white),),),
),
for (var i=0 ;i<widget.skill_name.length;i++)
Container(
  margin: EdgeInsets.all(6),
  padding: EdgeInsets.all(6),
  child:   Row(
  
  mainAxisAlignment: MainAxisAlignment.end,
  
    children: [
  
            Container(child: Text(widget.skill_name[i],style: TextStyle(color: Colors.white),),),
  
            SizedBox(width: 15),
  
            CircleAvatar(backgroundImage: AssetImage(widget.image_name[i]))
  
    ],
  
  ),
) 

        ],
        
      ),
    );
  }
}