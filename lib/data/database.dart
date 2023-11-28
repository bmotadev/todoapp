import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // referencia a box
  final _myBox = Hive.box('mybox');

  // executa este metodo sempre que abrir o app pela primeira vez
  void createInitialData() {
    toDoList = [
      ["Fazer exercicios", false],
      ["Correr", false]
    ];
  }

  // carregar os dados do banco de dados
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // atualizar o banco de dados
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
