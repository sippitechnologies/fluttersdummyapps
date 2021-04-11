import 'package:flutter/material.dart';
import 'package:todo/models/todo.dart';
import 'package:todo/util/dbhelper.dart';
import 'package:intl/intl.dart';

class TodoDetail extends StatefulWidget {
  Todo todo;
  TodoDetail(this.todo);
  @override
  State<StatefulWidget> createState() => _TodoDetailState(todo);
}

class _TodoDetailState extends State<TodoDetail> {
  Todo todo;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  List<String> priorties = ["High", "Medium", "Low"];
  String priority = "Low";

  _TodoDetailState(this.todo);
  @override
  Widget build(BuildContext buildContext) {
    titleController.text = todo.title;
    descriptionController.text = todo.description;
    TextStyle textStyle = Theme.of(buildContext).textTheme.bodyText1;

    return Scaffold(
        appBar: AppBar(
          title: Text("Todo Dtail"),
          automaticallyImplyLeading: false,
        ),
        body: ListView(children: [
          Padding(
            padding: EdgeInsets.all(35),
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                      hintText: "Buy Fruit",
                      labelStyle: textStyle,
                      labelText: "Enter Title",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    child: TextField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                          hintText: "What type of fruit",
                          labelStyle: textStyle,
                          labelText: "Enter Description",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )), 
                DropdownButton(
                  items: priorties
                      .map((e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                  value: "Low",
                  style: textStyle,
                  onChanged: (value) {
                    debugPrint(value);
                  },
                )
              ],
            ),
          )
        ]));
  }
}
