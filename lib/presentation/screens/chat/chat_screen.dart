import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_booble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://marriland.com/wp-content/plugins/marriland-core/images/pokemon/sprites/home/256/charmander.png",
            ),
          ),
        ),
        title: const Text("Charmander"),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 ==
                          0) //uso esto para alternar entre los dos resultados usando la division sintetica entre dos sabiendo cual es par y cual no es par
                      ? const HerMessageBubble()
                      : const MiMessageBubble();
                },
              ),
            ),
            //caja de mensajes
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
