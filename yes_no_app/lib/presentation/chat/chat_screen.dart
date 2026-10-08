import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://static.wikia.nocookie.net/fortnite/images/a/ac/Bugs%27_No_-_Emoticon_-_Fortnite.png/revision/latest?cb=20260319125002'),
          ),
        ),
        title: Text('Mi amor ♥ '),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index){
            return Text("Indice: $index");
          },)),
          Text("Hola"), 
          Text("MUndo"),
        ],),
        
     )
    );
  }
}