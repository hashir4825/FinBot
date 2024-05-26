import 'package:fin_bot/ChatWithBot.dart';
import 'package:fin_bot/Chat_Screen.dart';
import 'package:fin_bot/Voice_Command_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Custom_Widgets/Chat_Bubble.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/Frame 3.png'),
                  Row(
                    children: [
                      Text(
                        'Hi Ahsan',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                          height: 20,
                          child: Image.asset(
                            'assets/images/wave.png',
                          ))
                    ],
                  ),
                  Image.asset('assets/images/Ellipse 78.png')
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 34.0, right: 34),
                child: Text(
                  "How may I help",
                  style: TextStyle(color: Colors.white, fontSize: 34),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 34.0, right: 34),
                child: Text(
                  "you today !",
                  style: TextStyle(color: Colors.white, fontSize: 34),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context)=>VoiceCommandScreen()));
                    },
                    child: Container(
                      width: 180,
                      height: 250,

                      decoration: BoxDecoration(
                        color: Color(0XFFC6F432),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/images/rumor 1.png'),
                                Image.asset('assets/images/icon _arrow forward_.png'),

                              ],),

                            Text(
                              'Talk\nWith\nBot',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.bold
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context)=>ChatScreen()));
                        },
                        child: Container(
                          width: 160,
                          height: 120,

                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height:30,width: 40,

                                        child: Image.asset('assets/images/chatIcon.png')),
                                      Image.asset('assets/images/icon _arrow '
                                         'forward_.png'),

                                  ],),

                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0),
                                  child: Text(
                                    'Chat With Bot',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),



                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: 160,
                        height: 120,

                        decoration: BoxDecoration(
                          color: Color(0XFFFEC4DD),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height:30,width: 40,
                                      child: Image.asset
                                        ('assets/images/imageIcon.png')),
                                  Image.asset('assets/images/icon _arrow forward_.png'),

                                ],),

                              Text(
                                'Search By\nImage',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),



                            ],
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'History',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
            ),
            Column(
              children: [
                ChatBubble(
                  text: 'I want to check my balance',
                  leadingImage: AssetImage('assets/images/rumor 1.png'),
                  icon: Icons.more_vert,
                  color: Colors.grey.shade700,
                  backgroundColor: Color(0XFFC6F432),
                ),
                SizedBox(height: 10),
                ChatBubble(
                  text: 'Show me expenses of year 2023',
                  leadingImage: AssetImage('assets/images/chatIcon.png'),
                  icon: Icons.more_vert,
                  color: Colors.grey.shade700,
                  backgroundColor: Colors.tealAccent,
                ),
                SizedBox(height: 10),
                ChatBubble(
                  text: 'Best advices on seeing that',
                  leadingImage: AssetImage('assets/images/imageIcon.png'),
                  icon: Icons.more_vert,
                  color: Colors.grey.shade700,
                  backgroundColor: Colors.orangeAccent,
                ),
                SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

