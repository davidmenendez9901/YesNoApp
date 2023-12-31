import 'package:flutter/material.dart';
import 'package:myapp/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({Key? key, required this.message}) : super(key: key);
  final Message message;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondaryContainer,
              borderRadius: BorderRadius.circular(20)),
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
        SizedBox(
          height: size.height * 0.3,
          width: size.width * 0.4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              message.imageUrl!,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(child: Text('Enviando imagen'));
              },
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
