import 'package:flutter/material.dart';
import 'package:yes_no_app_v1/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola buenos días', fromWho: FromWho.me),
    Message(text: 'Ya cenaste ?', fromWho: FromWho.me),
    Message(text: 'Segura?', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners();
  }
}
