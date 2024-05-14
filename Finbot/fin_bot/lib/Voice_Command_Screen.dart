import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VoiceCommandScreen extends StatefulWidget {
  @override
  State<VoiceCommandScreen> createState() => _VoiceCommandScreenState();
}

class _VoiceCommandScreenState extends State<VoiceCommandScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Adjust duration as needed
    )..repeat(); // Makes the animation loop
    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: 60),
            Container(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFFC6F432)),
                child: Text(
                  'AI Buddy',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    RotationTransition(
                      turns: _animation,
                      child: Image.asset('assets/images/Asset 3 1.png'),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 34.0, right: 34),
                child: Text(
                  "Send \$200 to Ahsan Ali",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle onTap for the third picture
                    },
                    child: Image.asset('assets/images/keyboard.10 1.png',
                        width: 80, height: 80),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle onTap for the second picture
                    },
                    child: Image.asset('assets/images/Group 3.png',
                        width: 150, height: 150),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle onTap for the first picture
                    },
                    child: Stack(children: [

                      Image.asset('assets/images/Ellipse 85.png',width: 80,
                        height: 100,),

                      Image.asset(
                          'assets/images/fi-rr-cross-small'
                          '.1 1.png',
                          width: 80,
                          height: 100),
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
