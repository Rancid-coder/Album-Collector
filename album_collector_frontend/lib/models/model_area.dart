class ModelArea {
  final String id;
  final String name;
  final String sortName;
  final List<String> iso31661Codes;

  ModelArea({
    required this.id,
    required this.name,
    required this.sortName,
    required this.iso31661Codes,
  });

  factory ModelArea.fromJson(Map<String, dynamic> json) {
    return ModelArea(
      id: json['id'],
      name: json['name'],
      sortName: json['sort-name'],
      iso31661Codes: List<String>.from(json['iso-3166-1-codes'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'sort-name': sortName,
      'iso-3166-1-codes': iso31661Codes,
    };
  }
}
