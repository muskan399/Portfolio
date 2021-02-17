import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/MyHomePage.dart';
var colour=Colors.teal,colour2=Colors.white,l1;
 class skill extends StatefulWidget {
final skill_name,image_name,skill_title;
   skill({Key key, @required this.image_name,this.skill_title,this.skill_name}): super(key: key);
  @override
  _skillState createState() => _skillState();
}

class _skillState extends State<skill> {
  @override
  Widget build(BuildContext context) {
    return 
Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
MouseRegion(
  onHover: (k)
  {
        setState(() {
          colour=Colors.purple;
        });
  },
  onExit: (k)
  {
setState(() {
  colour=Colors.teal;
});
  },
  child:   Container(
  
  
  
    margin: EdgeInsets.all(20),
  
    padding: EdgeInsets.all(15),
  
    decoration: BoxDecoration(
  
    color: colour,
  
    borderRadius: BorderRadius.circular(30)
  
    ),
  
    child: Text(widget.skill_title,style: TextStyle(color: Colors.white,
  
    fontSize: 20
  
    ),
  
    )),
),

for (var i=0; i<widget.skill_name.size(); i++)
Column(
  children: [
        Row(
    
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    
      children: [
    
            Text( widget.skill_name[i]+" ",style: TextStyle(color: Colors.white)),
    
            CircleAvatar(
    
              backgroundImage: AssetImage(widget.image_name[i])
    
            )
    
      ],
    
    ),
    SizedBox(height: 20),
  ],
),
],);
  }
}

