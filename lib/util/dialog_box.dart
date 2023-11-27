import 'package:flutter/material.dart';
import 'package:todoapp/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.lightBlue[300],
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          // entrada de dados do usuario
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Adicione uma nova tarefa",
            ),
          ),

          // botões de salver e cancelar
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // botão salvar
              MyButton(
                text: "Salvar",
                onPressed: onSave,
              ),

              const SizedBox(width: 8),
              // botão cancelar
              MyButton(
                text: "Cancel",
                onPressed: onCancel,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
