import 'package:flutter/material.dart';
import 'package:todoapp/constant/colors.dart';
import 'package:todoapp/widgets/todo_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ToDoColors.appbarcolor,
        appBar: myappbar(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              mysearchbar(),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 35, bottom: 20),
                        child: const Text(
                          "All To Dos",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        )),
                    const ToDoItem(),
                    const ToDoItem(),
                    const ToDoItem(),
                    const ToDoItem(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

Widget mysearchbar() {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: ToDoColors.tdBlack,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(color: ToDoColors.menuIconColor)),
      ));
}

AppBar myappbar() {
  return AppBar(
      elevation: 0,
      backgroundColor: ToDoColors.appbarcolor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: ToDoColors.tdBlack,
            size: 30,
          ),
          SizedBox(
            height: 50,
            width: 50,
            //color: Colors.red,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/indir.jpeg'),
            ),
          )
        ],
      ));
}
