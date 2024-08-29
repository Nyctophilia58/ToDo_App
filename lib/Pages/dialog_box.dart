import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final String title;
  final String hintText;
  final Function(String) onChanged;
  final Function() cancelled;
  final Function() added;

  DialogBox({
    required this.title,
    required this.hintText,
    required this.onChanged,
    required this.cancelled,
    required this.added,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey)
        ),
      ),
      actions: [
        TextButton(
            onPressed: cancelled,
            child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: added,
          child: const Text('Add'),
        ),
      ],
    );
  }
}