import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://static.wikia.nocookie.net/fortnite/images/a/ac/Bugs%27_No_-_Emoticon_-_Fortnite.png/revision/latest?cb=20260319125002'),
          ),
        ),
        title: Text('Fernando jose'),
        centerTitle: true,
      ),
      
    );
  }
}