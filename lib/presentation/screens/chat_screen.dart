import 'package:flutter/material.dart';
import 'package:myapp/presentation/widgets/chat/her_message_bubble.dart';
import 'package:myapp/presentation/widgets/chat/my_message_bubble.dart';
import 'package:myapp/presentation/widgets/shared/text_box_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real Madrid'),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://1000logos.net/wp-content/uploads/2020/09/Real-Madrid-logo.png'),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context,index){
                return index % 2 == 0?const MyMessageBubble():const HerMessageBubble();
              },
              itemCount: 100,
              ),
              ),
              MessageFieldBox(),
            ],
          ),
        ),
      ),
    );
  }
}