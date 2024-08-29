import 'package:flutter/material.dart';
import 'package:to_do/Pages/todo_tile.dart';
import 'package:to_do/Pages/dialog_box.dart';


class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String newTaskName = '';

  List toDoList = [
    {'taskName': 'Read Books', 'isDone': false},
    {'taskName': 'Go for a walk', 'isDone': false},
    {'taskName': 'Buy Groceries', 'isDone': false},
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index]['isDone'] = !toDoList[index]['isDone'];
    });
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DialogBox(
          title: 'Add Task',
          hintText: 'Enter Task Name',
          onChanged: (value) {
            newTaskName = value;
          },
          cancelled: () {
            Navigator.pop(context);
          },
          added: () {
            setState(() {
              toDoList.add({'taskName': newTaskName, 'isDone': false});
            });
            Navigator.pop(context);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[180],
      appBar: AppBar(
        title: const Text(
          'To Do',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
        backgroundColor: Colors.green[800],
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index]['taskName'],
            isDone: toDoList[index]['isDone'],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}