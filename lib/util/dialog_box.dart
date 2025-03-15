import 'package:flutter/material.dart';
import 'my_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purple[100], // Light lavender background
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: "Add a new task",
                filled: true,
                fillColor: Colors.white, // White background for the text field
              ),
            ),

            // Buttons -> Save + Cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Save button
                MyButton(
                  text: "Save",
                  onPressed: onSave,
                  color: Colors.purple[300], // Lavender color for the button
                ),

                const SizedBox(width: 8),

                // Cancel button
                MyButton(
                  text: "Cancel",
                  onPressed: onCancel,
                  color: Colors.purple[500], // Purple color for the button
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}