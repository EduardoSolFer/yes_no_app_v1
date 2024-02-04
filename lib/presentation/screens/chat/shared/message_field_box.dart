import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  
  const MessageFieldBox({
    super.key,
    required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(50));

    final inputDecoration = InputDecoration(
        hintText: 'Write your message...',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            onValue(textValue);
            textController.clear();
          },
        )
      );

    return TextFormField(
      onTapOutside: (event) {
        //Si presiono fuera de el teclado se pierde el foco
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        onValue(value);
        textController.clear(); //Limpará el teclado cada que se envíe un comentario
        focusNode.requestFocus(); //Miestras este escribiendo el teclado mantendrá el foco
      },
    );
  }
}
