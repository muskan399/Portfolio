     

     import 'package:flutter/material.dart';
     import 'package:portfolio/MyHomePage.dart';

Stack page1(){
      return Stack(
              children : [
                                          

                for (var i in l)
                i,
                Center(
                  child: Center(
                    
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 700,
                            height: 300,
                            color: Colors.deepPurple[900],
                            child: Column(
                              children: [
                                 Row(
                                   children: [

                                     Container(
                                       margin: EdgeInsets.all(20),
                                       child: RichText(
                                         text: TextSpan(
                                           text: "Hi everyone,",style: TextStyle(fontSize: 42,color: Colors.white),
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
                                         child: Image.network("https://raw.githubusercontent.com/muskan399/first/master/hiii.gif"))
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
                         /* Container(
                            color: Colors.pink[100],
                            height: 400,
                            width: 400,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 100,
                                  backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage("https://raw.githubusercontent.com/muskan399/first/master/382701_352_canny_pic.jpg",
       ),
                                ),
                                SizedBox(
                                  height: 40
                                ),
                                
                                TypewriterAnimatedTextKit(
  speed: Duration(milliseconds: 100),
  totalRepeatCount: 4,
  text: ["I'm a developer", "I'm a cloud enthusisath", "I'm freaked out about Automation", "I'm interested in containerizarion technologies"],
  textStyle: TextStyle(
    color: Colors.black,
    fontSize: 20.0, fontWeight: FontWeight.bold),
  pause: Duration(milliseconds: 100),
  displayFullTextOnTap: true,
  stopPauseOnTap: true,
),
Image.network("http://cdn.lowgif.com/full/23362f46b731f500-hand-waving-goodbye-clipart-cliparthut-free-clipart.gif")
                              
                              ],
                            ),
                          ),*/
                          Container(
                            height: 400,
                            width: 300,
                            child: Image.network("http://cdn.lowgif.com/full/23362f46b731f500-hand-waving-goodbye-clipart-cliparthut-free-clipart.gif"))
                        ],
                      )),
                ),
          ]
      );
     }