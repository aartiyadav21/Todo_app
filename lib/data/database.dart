import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // Reference the Hive box
  final _myBox = Hive.box('mybox');

  // Create initial data if it's the first time
  void createInitialData() {
    toDoList = [
      ["Learn Flutter", false],
      ["Do Exercise", false],
    ];
    _myBox.put("TODOLIST", toDoList);
  }

  // Load data from Hive
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // Update data in Hive
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}