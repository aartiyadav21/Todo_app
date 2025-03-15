import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?) onChanged;
  final Function(BuildContext) deleteFunction;

  const ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.purple[100], // Light lavender background
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // Checkbox
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.purple[300], // Lavender checkbox
            ),

            // Task name
            Expanded(
              child: Text(
                taskName,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.purple[900], // Dark purple text
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ),

            // Delete button
            IconButton(
              onPressed: () => deleteFunction(context),
              icon: Icon(
                Icons.delete,
                color: Colors.purple[300], // Lavender delete icon
              ),
            ),
          ],
        ),
      ),
    );
  }
}