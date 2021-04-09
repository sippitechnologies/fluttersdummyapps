import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:todo/models/todo.dart';
import 'dart:async';

class DbHelper {
  String tableName = "demo";
  String colId = "id";
  String colTitle = "title";
  String colDescription = "description";
  String colDate = "date";
  String colPriority = "priority";

  static final DbHelper _dbHelper = DbHelper._internal();
  DbHelper._internal();
  factory DbHelper() {
    return _dbHelper;
  }
  static Database _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await intializeDb();
    }
    return _db;
  }

  Future<Database> intializeDb() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path + "todosdemo.db";
    var dbTodos = await openDatabase(path, version: 2, onCreate: _creatdb);
    return dbTodos;
  }

  void _creatdb(Database db, int version) async {
    await db.execute("CREATE TABLE $tableName(" +
        "$colId INTEGER PRIMARY KEY," +
        " $colTitle Text," +
        "$colDescription Text, " +
        "$colDate Text," +
        "$colPriority INTEGER)");
  }

  Future<int> insertTodo(Todo todo) async {
    Database mydb = await this.db;
    var result = await mydb.insert(tableName, todo.toMap());
    return result;
  }

  Future<List> getTodos() async {
    Database db = await this.db;
    var result =
        await db.rawQuery("SELECT * FROM $tableName ORDER BY $colPriority ASC");
    return result;
  }

  Future<int> getCount() async {
    Database db = await this.db;
    var result = Sqflite.firstIntValue(
        await db.rawQuery("Select count(*) from $tableName"));
    return result;
  }

  Future<int> updateTodo(Todo todo) async {
    Database db = await this.db;
    var result = await db.update(tableName, todo.toMap(),
        where: "$colId=?", whereArgs: [todo.id]);
    return result;
  }

  Future<int> deleteTodo(int id) async {
    var db = await this.db;
    var result = await db.rawDelete("DELETE From $tableName WHERE $colId=$id");
    return result;
  }
}
