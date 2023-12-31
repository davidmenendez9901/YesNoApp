import 'package:flutter/material.dart';
import 'package:myapp/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({Key? key, required this.message}) : super(key: key);
  final Message message;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colors.primary,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Text(message.text),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
