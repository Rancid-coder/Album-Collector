class ModelLabel {
  final String id;
  final String name;

  ModelLabel({
    required this.id,
    required this.name,
  });

  factory ModelLabel.fromJson(Map<String, dynamic> json) {
    return ModelLabel(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
