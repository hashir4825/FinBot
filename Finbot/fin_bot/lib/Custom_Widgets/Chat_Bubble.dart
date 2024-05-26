


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final ImageProvider leadingImage;
  final IconData icon;
  final Color color;
  final Color backgroundColor;

  const ChatBubble({
    Key? key,
    required this.text,
    required this.leadingImage,
    required this.icon,
    required this.color,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: backgroundColor,
            child: ClipOval(
              child: Image(
                image: leadingImage,
                fit: BoxFit
                    .cover, // Ensure the entire image is visible without being trimmed
              ),
            ),
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(width: 10),
          Icon(icon, color: Colors.black),
        ],
      ),
    );
  }
}
