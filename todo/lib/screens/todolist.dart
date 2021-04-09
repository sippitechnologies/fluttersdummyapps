import 'package:flutter/material.dart';
import 'package:todo/models/todo.dart';
import 'package:todo/util/dbhelper.dart';

class TodoList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TodoListState();
}

class TodoListState extends State<TodoList> {
  DbHelper dbHelper = DbHelper();
  List<Todo> todos;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    if (todos == null) {
      // ignore: deprecated_member_use
      todos = List<Todo>();
      getData();
    }
    return Scaffold(
      body: listItems(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }

  ListView listItems() {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext buildcontext, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              child: Text(todos[position].title),
              backgroundColor: Colors.red,
            ),
            title: Text(todos[position].title),
            subtitle: Text(todos[position].date),
            onTap: () {
              debugPrint(position.toString());
            },
          ),
        );
      },
    );
  }

  void getData() {
    final dbFuture = dbHelper.intializeDb();
    dbFuture.then((value) {
      final todoFuture = dbHelper.getTodos();
      todoFuture.then((value) {
        // ignore: deprecated_member_use
        List<Todo> todoList = List();
        count = value.length;
        for (int i = 0; i < count; i++) {
          todoList.add(Todo.fromObject(value[i]));
          debugPrint(todoList[i].title);
        }

        setState(() {
          todos = todoList;
          count = count;
        });
        debugPrint(todoList.toString());
        debugPrint(count.toString());
      });
    });
  }
}
