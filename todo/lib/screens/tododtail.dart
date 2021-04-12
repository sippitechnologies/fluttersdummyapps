import 'package:flutter/material.dart';
import 'package:todo/models/todo.dart';
import 'package:todo/util/dbhelper.dart';
import 'package:intl/intl.dart';

DbHelper helper = DbHelper();
final List<String> priorties = ["High", "Medium", "Low"];
final List<String> choices = const [
  "Save Todo & Back",
  "Delete To Do",
  "Back To List"
];
const menuSave = "Save Todo & Back";
const menuDelete = "Delete To Do";
const menuBack = "Back To List";
String priority = "Low";

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
          actions: <Widget>[
            PopupMenuButton(
              itemBuilder: (buildContext) {
                return choices
                    .map((e) => PopupMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList();
              },
              onSelected: (value) => onAction(value),
            )
          ],
        ),
        body: ListView(children: [
          Padding(
            padding: EdgeInsets.all(35),
            child: Column(
              children: [
                TextField(
                  onChanged: (value) => updatedTitle(),
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
                      onChanged: (value) => updateDescription(),
                      controller: descriptionController,
                      decoration: InputDecoration(
                          hintText: "What type of fruit",
                          labelStyle: textStyle,
                          labelText: "Enter Description",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )),
                ListTile(
                    title: DropdownButton(
                  items: priorties
                      .map((e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                  value: retievePriority(todo.prority),
                  style: textStyle,
                  onChanged: (value) {
                    updatePriority(value);
                  },
                ))
              ],
            ),
          )
        ]));
  }

  void onAction(value) async {
    switch (value) {
      case menuBack:
        Navigator.pop(context, true);
        break;
      case menuSave:
        save();
        break;
      case menuDelete:
        delete();
        break;
    }
  }

  void delete() async {
    if (todo.id == null) {
      return;
    }
    Navigator.pop(context, true);
    int result = await helper.deleteTodo(todo.id);
    if (result != 0) {
      AlertDialog alertDialog = AlertDialog(
        title: Text("Todo Deleted"),
        content: Text("Todo Deleted Successfully"),
      );
      showDialog(
          context: context,
          builder: (context) {
            return alertDialog;
          });
    }
  }

  void save() {
    todo.date = DateFormat.yMd().format(DateTime.now());
    if (todo.id != null) {
      helper.updateTodo(todo);
    } else {
      helper.insertTodo(todo);
    }
    Navigator.pop(context, true);
  }

  void updatePriority(String value) {
    setState(() {
      todo.prority = getPriority(value);
    });
  }

  int getPriority(String prority) {
    int result = 0;
    switch (prority) {
      case "High":
        {
          result = 3;
        }
        break;
      case "Medium":
        result = 2;
        break;
      case "Low":
        result = 1;
        break;
    }
    return result;
  }

  String retievePriority(int prirority) {
    return priorties[prirority - 1];
  }

  void updatedTitle() {
    todo.title = titleController.text;
  }

  void updateDescription() {
    todo.description = descriptionController.text;
  }
}
