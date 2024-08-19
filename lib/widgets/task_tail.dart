import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTail;
  final Function(bool?) checkCallbacks;
  final void Function() deleteItem;

  const TaskTile({
    required this.taskTail,
    required this.isChecked,
    required this.checkCallbacks,
    required this.deleteItem,
     super.key});



  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTail,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(onChanged:checkCallbacks,
      
      value:isChecked ,),
      onLongPress: deleteItem,
    );
  }
}




