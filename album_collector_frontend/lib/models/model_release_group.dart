class ModelReleaseGroup {
  final String id;
  final String typeId;
  final String primaryTypeId;
  final String title;
  final String primaryType;
  final List<String> secondaryTypes;
  final List<String> secondaryTypeIds;

  ModelReleaseGroup(
      {required this.id,
      required this.typeId,
      required this.primaryTypeId,
      required this.title,
      required this.primaryType,
      required this.secondaryTypes,
      required this.secondaryTypeIds});

  factory ModelReleaseGroup.fromJson(Map<String, dynamic> json) {
    return ModelReleaseGroup(
      id: json['id'],
      typeId: json['type-id'],
      primaryTypeId: json['primary-type-id'],
      title: json['title'],
      primaryType: json['primary-type'],
      secondaryTypes: List<String>.from(json['secondary-types'] ?? []),
      secondaryTypeIds: List<String>.from(json['secondary-type-ids'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type-id': typeId,
      'primary-type-id': primaryTypeId,
      'title': title,
      'primary-type': primaryType,
      'secondary-types': secondaryTypes,
      'secondary-type-ids': secondaryTypeIds,
    };
  }
}
