

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatWithBot extends StatefulWidget {
  const ChatWithBot({super.key});

  @override
  State<ChatWithBot> createState() => _ChatWithBotState();
}

class _ChatWithBotState extends State<ChatWithBot> {


  final TextEditingController commandController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SingleChildScrollView(

        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              SizedBox(height: 60,),
              Container(
                child: ElevatedButton(
                  onPressed: (){},
                  style:  ElevatedButton.styleFrom(backgroundColor: Color(0XFFC6F432)),
                  child: Text('Chat with AI',style: TextStyle(color:
                  Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(
                height: 20,
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
                padding: const EdgeInsets.only(top:200 ,bottom: 20.0,left: 10,
                    right: 10),
                child: TextField(
                  controller: commandController,
                  obscureText: false, // Set to true if it's a password field
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Enter Command',
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20), // Spacer
              // Add more TextFormFields or other widgets as needed


            ],
          ),
        ),
      ),


    );
  }
}
