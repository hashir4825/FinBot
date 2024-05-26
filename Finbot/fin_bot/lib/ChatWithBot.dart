import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, String>> _messages = [];
  final TextEditingController _controller = TextEditingController();
  final List<String> _recommendedQuestions = [
    'Show my account balance',
    'Show my latest transaction',
  ];

  void _sendMessage(String text) {
    setState(() {
      _messages.add({'type': 'sent', 'text': text});
      _messages.add({'type': 'received', 'text': 'This is a response.'});
    });
  }

  void _shareChat() {
    // Implement the logic to share the chat
    print("Share Chat");
  }

  void _showAccountInfo() {
    // Implement the logic to show account info
    print("Show Account Info");
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

  Widget _buildRecommendedQuestions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Flexible(
            child: InkWell(
              onTap: () {
                _sendMessage(_recommendedQuestions[0]);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                decoration: BoxDecoration(
                  color: Color(0xFF416FDF),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  _recommendedQuestions[0],
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(width: 10), // Add gap
          Flexible(
            child: InkWell(
              onTap: () {
                _sendMessage(_recommendedQuestions[1]);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                decoration: BoxDecoration(
                  color: Color(0xFF416FDF),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  _recommendedQuestions[1],
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AI Assistant',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF416FDF),
        leading: IconButton(
          icon: Icon(Icons.file_upload_outlined,color: Colors.white,),
          onPressed: _shareChat,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle,color: Colors.white,),
            onPressed: _showAccountInfo,
          ),
        ],
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
          crossAxisAlignment: isSent
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            _buildMessage(message!['text']!, isSent),
            if (index < _messages.length - 1)
              SizedBox(height: 8.0), // Add a gap
          ],
        );
      },
    ),
    ),
    _buildRecommendedQuestions(),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
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
    borderSide: BorderSide(color: Color(0xFF416FDF)),
    ),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20.0),
    borderSide: BorderSide(
    color: Color(0xFF416FDF),
    ),
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
    size: 30,
    ),
    onPressed: () {
    _sendMessage(_controller.text);
    _controller.clear();
    },
    ),
    ],
    ),
    ),
          ],
      ),
    );
  }
}
