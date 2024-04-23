import 'package:fin_bot/Voice_Command_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat_Screen extends StatefulWidget {
  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: 60,),
            Container(
              child: ElevatedButton(
                onPressed: (){},
                style:  ElevatedButton.styleFrom(backgroundColor: Color(0XFFC6F432)),
                child: Text('Financial AI Buddy',style: TextStyle(color:
                Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/images/Group.png'),
                      Image.asset('assets/images/Group_1.png'),
                    ],
                  )
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 34.0,right: 34),
                child: Text(
                  "How may I help",
                  style: TextStyle(color: Colors.white, fontSize: 34),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 34.0,right: 34),
                child: Text(
                  "you today !",
                  style: TextStyle(color: Colors.white, fontSize: 34),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: SizedBox(
                width: double.infinity,
                height: 60,// Set your desired width here
                child: ElevatedButton(
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>VoiceCommandScreen()));
                    // Add your onPressed functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white, // Text color of the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          18.0), // Set your desired border radius here
                    ),
                  ),
                  child: Text(
                    "Get started",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
}