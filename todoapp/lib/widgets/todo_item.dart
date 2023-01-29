import 'package:flutter/material.dart';
import 'package:todoapp/constant/colors.dart';

import '../models/todo.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem(
      {super.key, required this.todo, this.onToDoChanged, this.onDeleteItem});
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: ToDoColors.tdBlue),
        title: Text(todo.todoText!,
            style: TextStyle(
                fontSize: 17,
                decoration: todo.isDone ? TextDecoration.lineThrough : null)),
        trailing: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(vertical: 12),
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                color: ToDoColors.tdRed,
                borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              icon: const Icon(Icons.delete),
              iconSize: 18,
              color: Colors.white,
              onPressed: () {
                print("click");
              },
            )),
      ),
    );
  }
}
