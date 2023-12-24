import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondaryContainer,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
            child: Text('her message'),
          ),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}