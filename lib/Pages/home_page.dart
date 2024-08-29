import 'package:flutter/material.dart';
import 'package:to_do/Pages/todo_tile.dart';
import 'package:to_do/Pages/dialog_box.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do/data/database.dart';


class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String newTaskName = '';
  final myToDoBox = Hive.box('myToDoBox');

  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    if(myToDoBox.get('toDoList') == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index]['isDone'] = !db.toDoList[index]['isDone'];
    });
    db.updateData();
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
          added: () {
            setState(() {
              if (newTaskName == '') {
                return;
              }
              db.toDoList.add({'taskName': newTaskName, 'isDone': false});
              newTaskName = '';
            });
            Navigator.pop(context);
            db.updateData();
          },
          cancelled: () {
            Navigator.pop(context);
          },
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateData();
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
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.toDoList[index]['taskName'],
            isDone: db.toDoList[index]['isDone'],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}