class Package {
  String _title;
  String _description;
  String _url;
  String _version;
  String _updatedAt;
  int _score;

  Package(
      {String title,
      String description,
      String url,
      String version,
      String updatedAt,
      int score}) {
    this._title = title;
    this._description = description;
    this._url = url;
    this._version = version;
    this._updatedAt = updatedAt;
    this._score = score;
  }

  String get title => _title;
  set title(String title) => _title = title;
  String get description => _description;
  set description(String description) => _description = description;
  String get url => _url;
  set url(String url) => _url = url;
  String get version => _version;
  set version(String version) => _version = version;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;
  int get score => _score;
  set score(int score) => _score = score;

  Package.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _description = json['description'];
    _url = json['url'];
    _version = json['version'];
    _updatedAt = json['updatedAt'];
    _score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this._title;
    data['description'] = this._description;
    data['url'] = this._url;
    data['version'] = this._version;
    data['updatedAt'] = this._updatedAt;
    data['score'] = this._score;
    return data;
  }
}