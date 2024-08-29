import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList = [];
  final myToDoBox = Hive.box('myToDoBox');

  void createInitialData() {
    toDoList = [
      {'taskName': 'Buy Groceries', 'isDone': false},
      {'taskName': 'Pay Bills', 'isDone': false},
      {'taskName': 'Go for a walk', 'isDone': false},
    ];
  }

  void loadData() {
    toDoList = myToDoBox.get('toDoList');
  }

  void updateData() {
    myToDoBox.put('toDoList', toDoList);
  }
}

