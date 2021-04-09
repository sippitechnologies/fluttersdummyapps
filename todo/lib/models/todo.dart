class Todo {
  String _title;
  String _description;
  int _id;
  String _date;
  int _priority;

  Todo(this._title, this._date, this._priority, [this._description]);
  Todo.withId(this._id, this._title, this._date, this._priority,
      [this._description]);

  int get prority => _priority;
  int get id => this._id;
  String get date => _date;
  String get description => _description;
  String get title => _title;

  set prority(int prority) {
    this._priority = prority;
  }

  set date(String date) {
    this._date = date;
  }

  set title(String title) {
    this._title = title;
  }

  set description(String description) {
    this._description = description;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = new Map();
    if (_id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['date'] = _date;
    map['priority'] = _priority;
    return map;
  }

  Todo.fromObject(dynamic o) {
    _title = o['title'];
    _description = o['description'];
    _date = o['date'];
    _id = o['id'];
    _priority = o['priority'];
  }
}
