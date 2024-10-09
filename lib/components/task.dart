import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({
    super.key,
    required this.taskName,
    required this.taskStatus,
    required this.borderColor,
    required this.backgroundColor,
    required this.onChanged,
    required this.onDeleted,
  });

  final String taskName;
  final bool taskStatus;
  final Function(bool?)? onChanged;
  final Function()? onDeleted;
  final Color borderColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor,
        ),
        child: Row(
            children: [
              Checkbox(
                value: taskStatus,
                onChanged: onChanged,
                activeColor: borderColor,
              ),
              Text(
                taskName,
                style: TextStyle(
                  decoration: taskStatus ? TextDecoration.lineThrough : TextDecoration.none,
                  fontSize: 20,
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Color.fromARGB(255, 234, 67, 53),
                ),
                onPressed: onDeleted,
              )
            ]
        ),
      ),
    );
  }
}