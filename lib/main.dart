import 'dart:ui';
import 'Chatview.dart';

import 'package:chatapp/chatpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Chats chats = Chats();

void main() {
  runApp(chatApp());
}

class chatApp extends StatelessWidget {
  const chatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: chatPage(),
    );
  }
}

class chatPage extends StatefulWidget {
  const chatPage({Key? key}) : super(key: key);

  @override
  _chatPageState createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x080A31D8),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                children: <Widget>[
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, top: 20, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Messages',
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(left: 10, right: 30, top: 30),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(color: Colors.white60),
                        prefixIcon: Icon(Icons.search, color: Colors.white60),
                        filled: true,
                        fillColor: Color(0x4C567B17),
                        contentPadding: EdgeInsets.all(10),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),  //Messages and search bar

            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Text(
                'Activities',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: SingleChildScrollView(     // Horizontal scrolling for viewing the activities
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0x903C9734),
                            maxRadius: 40.0,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  'images/wp1812720-big-hero-6-wallpapers.jpg'),
                              maxRadius: 36.0,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10.0)),
                          Center(
                            child: Text(
                              'Selma',
                              style: TextStyle(
                                color: Colors.white60,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0x903C9734),
                            maxRadius: 40.0,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  'images/wp1814637-big-hero-6-wallpapers.jpg'),
                              maxRadius: 36.0,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10.0)),
                          Center(
                            child: Text(
                              'Emeline',
                              style: TextStyle(color: Colors.white60),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0x903C9734),
                            maxRadius: 40.0,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  'images/wp1814640-big-hero-6-wallpapers.jpg'),
                              maxRadius: 36.0,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10.0)),
                          Center(
                            child: Text(
                              'Sonia',
                              style: TextStyle(color: Colors.white60),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0x903C9734),
                            maxRadius: 40.0,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  'images/wp1814646-big-hero-6-wallpapers.jpg'),
                              maxRadius: 36.0,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10.0)),
                          Center(
                            child: Text(
                              'Jean',
                              style: TextStyle(color: Colors.white60),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0x903C9734),
                            maxRadius: 40.0,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  'images/wp1814646-big-hero-6-wallpapers.jpg'),
                              maxRadius: 36.0,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10.0)),
                          Center(
                            child: Text(
                              'Sponge',
                              style: TextStyle(color: Colors.white60),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0x903C9734),
                            maxRadius: 40.0,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  'images/wp1814646-big-hero-6-wallpapers.jpg'),
                              maxRadius: 36.0,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10.0)),
                          Center(
                            child: Text(
                              'Bob',
                              style: TextStyle(color: Colors.white60),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),  //Activities scrolling
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Text(
                'Messages',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),   //Messages
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            ),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>ChatView()));
            },
              highlightColor:Color(0x903C9734) ,
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Color(0x903C9734),
                    maxRadius: 40.0,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(chats.messages[0].image!),
                      maxRadius: 36.0,
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                chats.messages[0].name!,
                                style: TextStyle(color: Colors.white60),
                              ),
                              Text(
                                chats.messages[0].messageText!,
                                maxLines: 2,
                                style: TextStyle(
                                  color: Colors.white60,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            chats.messages[0].time!,
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color(0x903C9734),
                  maxRadius: 40.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(chats.messages[1].image!),
                    maxRadius: 36.0,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              chats.messages[1].name!,
                              style: TextStyle(color: Colors.white60),
                            ),
                            Text(
                              chats.messages[1].messageText!,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          chats.messages[1].time!,
                          style: TextStyle(color: Colors.white60),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color(0x903C9734),
                  maxRadius: 40.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(chats.messages[2].image!),
                    maxRadius: 36.0,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              chats.messages[2].name!,
                              style: TextStyle(color: Colors.white60),
                            ),
                            Text(
                              chats.messages[2].messageText!,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          chats.messages[2].time!,
                          style: TextStyle(color: Colors.white60),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color(0x903C9734),
                  maxRadius: 40.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(chats.messages[3].image!),
                    maxRadius: 36.0,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              chats.messages[3].name!,
                              style: TextStyle(color: Colors.white60),
                            ),
                            Text(
                              chats.messages[3].messageText!,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          chats.messages[3].time!,
                          style: TextStyle(color: Colors.white60),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color(0x903C9734),
                  maxRadius: 40.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(chats.messages[4].image!),
                    maxRadius: 36.0,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              chats.messages[4].name!,
                              style: TextStyle(color: Colors.white60),
                            ),
                            Text(
                              chats.messages[4].messageText!,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          chats.messages[4].time!,
                          style: TextStyle(color: Colors.white60),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0x080A31D8),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.message, color: Colors.white60),
              title: Text(
                'Chats',
                style: TextStyle(color: Colors.white60),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone, color: Colors.white60),
              title: Text(
                'Phone',
                style: TextStyle(
                  color: Colors.white60,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera, color: Colors.white60),
              title: Text(
                'Camera',
                style: TextStyle(color: Colors.white60),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.white60),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white60),
              ))
        ],
      ),
    );
  }
}
