import 'dart:ui';
import 'main.dart';

import 'package:chatapp/chatpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0x1D0A31D8),
        appBar:AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget> [
              InkWell(onLongPress:(){
                Navigator.pop(context,Text('Remove for views'));
              } ,
                  onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>chatPage()));
              },
                  child: Icon(Icons.arrow_back,color:Colors.white60)),

              CircleAvatar(
                backgroundImage: AssetImage('images/wp1814646-big-hero-6-wallpapers.jpg'),),
              Padding(
                  padding:EdgeInsets.only(left:10.0)),
              Column(
                children:<Widget> [
                  Text('Emeline'),
                  Text('online',
                  style:TextStyle(fontSize: 10.0),),
                ],
              ),
              Padding(
                  padding:EdgeInsets.only(left:170.0)),
              Row(
                mainAxisAlignment:MainAxisAlignment.end,
                children: [
                  Icon(Icons.videocam,color:Colors.white60),
                  Padding(
                      padding:EdgeInsets.only(left:10.0)),
                  Icon(Icons.phone,color: Colors.white60,),
                ],
              )
            ],
          ),
          backgroundColor: Color(0xDF183418),
        ),
        body:Container(
          decoration:BoxDecoration(
            image:DecorationImage(image:AssetImage('images/2.jpg')),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SingleChildScrollView(physics:BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration:BoxDecoration(
                              color:Colors.black87,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Hi there \n How are you doing today?',
                            style:TextStyle(
                                color:Colors.white60,
                            )),
                          ),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          decoration:BoxDecoration(
                              color:Color(0xDF173234),
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('I\'m doing great \n How are you too doing today?',
                                style:TextStyle(
                                  color:Colors.white60,
                                )),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(focusColor: Colors.white60,
                              hintText: 'Enter message',
                              hintStyle: TextStyle(color: Colors.white60),
                              prefixIcon: Icon(Icons.insert_emoticon, color: Colors.white60),
                              filled: true,
                              fillColor: Color(0x90415A10),
                              contentPadding: EdgeInsets.all(10),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40.0)),
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.white60,
                          child:Center(
                            child: Icon(Icons.send,
                                color:Color(0xDF183418),
                          ),
                            ),
                          onPressed:(){},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
        ),
        ),
    );
  }
}
