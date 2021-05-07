class Troop {
  String _name;
  String _description;
  int _cost;
  int _speed;
  int _trainning;

  bool _isFavorite;

  Troop(this._name, this._description, this._speed, this._trainning, this._cost,
      [this._isFavorite = false]);

  get name => this._name;
  get description => this._description;
  get speed => this._speed;
  get cost => this._cost;
  get trainning => this._trainning;
  get isFavorite => this._isFavorite;

  setIsFavorite() {
    this._isFavorite = !this._isFavorite;
  }
}
