// task_item.dart

import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String title;
  final bool isCompleted;
  final VoidCallback onToggleComplete;
  final VoidCallback onDelete;

  const TaskItem({
    super.key,
    required this.title,
    required this.isCompleted,
    required this.onToggleComplete,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.red, width: 2),
      ),
      child: Row(
        children: [
          Checkbox(
            activeColor: Colors.white,
            checkColor: Colors.red,
            value: isCompleted,
            onChanged: (_) => onToggleComplete(),
          ),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                decoration: isCompleted ? TextDecoration.lineThrough : null,
                decorationColor: Colors.red,
                decorationThickness: 3,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete,
            ),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}
