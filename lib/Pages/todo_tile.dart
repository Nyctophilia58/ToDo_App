import 'package:flutter/material.dart';
import 'package:to_do/Pages/home_page.dart';

class ToDoTile extends StatelessWidget {

  final String taskName;
  final bool isDone;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.isDone,
    required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 25, right: 25),
      child: Container(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            Checkbox(value: isDone, onChanged: onChanged, activeColor: Colors.green[800]),
            Text(
              taskName,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                decoration: isDone ? TextDecoration.lineThrough : null,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.green[400],
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}