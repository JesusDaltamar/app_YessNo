import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    //CREO UNA LISTA DE MENSAJES PARA RECIBIR LOS MENSAJES
    Message(text: "hola amor", fromWho: FromWho.me),
    Message(text: "Ya regresaste del trabajo?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage); //esto agrega el mensaje a lista
    notifyListeners(); //notifica a todos los escuchas que hubo un cambio
  }
}
