import 'package:flutter/material.dart';
import 'package:todoapp/constant/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('it did');
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: const Icon(Icons.check_box, color: ToDoColors.tdBlue),
        title: const Text("home work",
            style: TextStyle(
                fontSize: 17, decoration: TextDecoration.lineThrough)),
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
