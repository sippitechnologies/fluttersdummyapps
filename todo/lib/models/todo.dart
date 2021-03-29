class Todo {
  String _title;
  String _description;
  String _id;
  String _date;
  int _priority;

  Todo(this._title, this._date, this._priority, [this._description]);
  Todo.withId(this._id, this._title, this._date, this._priority,
      [this._description]);
  Todo.fromObject(dynamic o) {
    _title = o['title'];
    _description = o['description'];
    _date = o['date'];
    _id = o['id'];
    _priority = o['priority'];
  }
}
