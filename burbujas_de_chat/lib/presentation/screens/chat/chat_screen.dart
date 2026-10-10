import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/screens/chat/witgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/screens/chat/witgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/screens/chat/witgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://4.bp.blogspot.com/_Hpk9_DqGlhQ/S-GpsXxTCRI/AAAAAAAAACg/50ZVNAE3jwM/s1600/luna_p2.jpg'),
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
                return (index % 2 == 0)
                ? const MyMessageBubble()
                : const HerMessageBubble();
            },)),
          ///caja de texto de mensajes
         const MessageFieldBox(),
        ],),
        
     )
    );
  }
}