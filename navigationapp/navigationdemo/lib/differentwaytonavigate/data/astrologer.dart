class AstroLoger {
  String _name;
  String _qualication;
  int _experience;
  String _description;

  AstroLoger(this._name, this._qualication, this._experience,
      [this._description]);

  set name(String name) {
    this._name = name;
  }

  get name => _name;

  get qualification => _qualication;

  set qualification(String qualification) {
    this._qualication = qualification;
  }

  set experience(int experience) {
    this._experience = experience;
  }

  get experience => _experience;

  set description(String description) {
    this._description = description;
  }

  get description => _description;
}
