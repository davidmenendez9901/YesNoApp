import 'package:flutter/material.dart';
import 'package:myapp/presentation/providers/chat_provider.dart';

class MessageFieldBox extends StatelessWidget {
  MessageFieldBox({Key? key, required this.onValue}) : super(key: key);
  final TextEditingController textController = TextEditingController();

  final FocusNode focusNode = FocusNode();

  final ValueChanged<String> onValue;
  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: InputDecoration(
        hintText: 'End your message in "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {
            onValue(textController.value.text);
            textController.clear();
            focusNode.requestFocus();
          },
          icon: const Icon(Icons.send_outlined),
        ),
      ),
      onFieldSubmitted: (value) {
        onValue(value);
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
