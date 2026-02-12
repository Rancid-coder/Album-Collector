class ModelArtist {
  final String id;
  final String name;
  final String sortName;
  final String? disambiguation;

  ModelArtist(
      {required this.id,
      required this.name,
      required this.sortName,
      this.disambiguation});

  factory ModelArtist.fromJson(Map<String, dynamic> json) {
    return ModelArtist(
      id: json['id'],
      name: json['name'],
      sortName: json['sort-name'],
      disambiguation: json['disambiguation'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'sort-name': sortName,
      'disambiguation': disambiguation,
    };
  }
}
