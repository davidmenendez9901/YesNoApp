import 'package:flutter/material.dart';
import 'package:myapp/domain/entities/message.dart';
import 'package:myapp/presentation/providers/chat_provider.dart';
import 'package:myapp/presentation/widgets/chat/her_message_bubble.dart';
import 'package:myapp/presentation/widgets/chat/my_message_bubble.dart';
import 'package:myapp/presentation/widgets/shared/text_box_widget.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chatProvider =
        context.watch<ChatProvider>(); // <--- get chat provider
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real Madrid'),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://1000logos.net/wp-content/uploads/2020/09/Real-Madrid-logo.png'),
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
                  controller: chatProvider.chatScrollController,
                  itemCount: chatProvider.messages.length,
                  itemBuilder: (context, index) {
                    return chatProvider.messages[index].fromWho == FromWho.my
                        ? MyMessageBubble(
                            message: chatProvider.messages[index],
                          )
                        : HerMessageBubble(
                            message: chatProvider.messages[index],
                          );
                  },
                ),
              ),
              MessageFieldBox(
                onValue: (value) => chatProvider.sendMessage(value),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
