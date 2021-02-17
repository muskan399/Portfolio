import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class article extends StatefulWidget {
  final article_title,article_link,article_desc,article_image;
  article({Key key, this.article_desc,this.article_image,this.article_link,this.article_title}): super(key: key);
  @override
  _articleState createState() => _articleState();
}

class _articleState extends State<article> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        launch(widget.article_link);
      },
          child: Container(
            width: 600,
           // height: 600,
            //padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
decoration: BoxDecoration(color: Colors.purple[100],borderRadius: BorderRadius.circular(20)),
        child: Column(children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            child: Text(widget.article_title,
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.black),
          ),),

      
          Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              image: DecorationImage(image: AssetImage(widget.article_image,
              ),fit: BoxFit.fill)),
           width: 600,
           height: 250,
          )
        ]
    )
          )
    );
  }
}