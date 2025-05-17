import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      hintText: "fin de tu mensaje '?' ",
      enabledBorder:
          outlineInputBorder, // como se ve la caja de texto antes de seleccionarla
      focusedBorder:
          outlineInputBorder, //como se ve la caja ed texto despues de seleccionar
      filled: true,
      suffixIcon: IconButton(
        // crea el icono para enviar el texto
        onPressed: () {
          final textValue = textController.value.text;
          print("boton: $textValue");
          textController.clear();
        },
        icon: const Icon(Icons.send_outlined),
      ),
    );

    return TextFormField(
      //crea la caja de texto
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print("Enviar valor: $value");
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
