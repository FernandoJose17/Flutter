import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
   // final color = Theme.of(context).colorScheme;
    final textController = TextEditingController();
    final focusNode = FocusNode();
    // Cambiamos el nombre de la variable a minúscula para no confundir a Dart con la Clase
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      hintText: "Escribe un mensaje...",
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.text;
          // El print va dentro de las llaves del onPressed
          print("button $textValue");
          textController.clear(); // Limpiamos la caja de texto después de enviar el mensaje
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus(); // Ocultamos el teclado al tocar fuera del TextFormField}
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print("Submit value: $value");
        textController.clear(); // Limpiamos la caja de texto después de enviar el mensaje
      focusNode.requestFocus(); // Mantenemos el foco en la caja de texto después de enviar el mensaje      
      },
    );
  }
}