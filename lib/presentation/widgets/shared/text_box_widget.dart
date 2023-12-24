import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
   MessageFieldBox({Key? key}) : super(key: key);
final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
final outlineInputBorder = OutlineInputBorder(
borderSide:const  BorderSide(color:Colors.transparent ),
          borderRadius: BorderRadius.circular(40),
);

    return TextFormField(
      controller: textController,
      decoration: InputDecoration(
        hintText: 'End your message in "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          onPressed: (){
            print(textController.value.text);
          }, 
          icon: const Icon(Icons.send_outlined),
        ),

      ),
      onFieldSubmitted: (value) {
        print('$value');
      },
    );
  }
}