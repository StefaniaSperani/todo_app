import 'package:hive_flutter/adapters.dart';

class ToDoDatabase {
  List toDoList = [];

  final _mybox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ['Make tutorial', false],
      ['Make pasta', true],
      ['Read', false],
      ['Pet cats', true],
    ];
  }

  void loadData() {
    toDoList = _mybox.get('TODOLIST');
  }

  void updateData() {
    _mybox.put('TODOLIST', toDoList);
  }
}
