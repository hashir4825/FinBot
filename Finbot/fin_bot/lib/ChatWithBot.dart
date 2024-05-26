import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, String>> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    setState(() {
      _messages.add({'type': 'sent', 'text': _controller.text});
      _messages.add({'type': 'received', 'text': 'This is a response.'});
      _controller.clear();
    });
  }

  Widget _buildMessage(String text, bool isSent) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: isSent ? Color(0xFF416FDF) : Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
          topRight: isSent ? Radius.circular(0) : Radius.circular(10),
          bottomLeft: isSent ? Radius.circular(10) : Radius.circular(0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSent ? Colors.white : Colors.black,
          fontSize: 20.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: const Text(
              'AI Assistant',
              style: TextStyle(color: Colors.white),
            )),
        backgroundColor: Color(0xFF416FDF),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                final isSent = message['type'] == 'sent';
                return Column(
                  crossAxisAlignment:
                  isSent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: [
                    _buildMessage(message!['text']!, isSent),
                    if (index < _messages.length - 1)
                      SizedBox(height: 8.0), // Add a gap
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Color(0xFF416FDF),
                        size: 30,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Color(0xFF416FDF) )
                      ),

                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: Color(0xFF416FDF),
                        )
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                IconButton(
                  icon: const Icon(
                    Icons.send,
                    color: Color(0xFF416FDF),
                    size: 35,
                  ),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
