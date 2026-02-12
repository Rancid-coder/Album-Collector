import 'package:album_collector_frontend/models/model_label.dart';

class ModelLabelInfo {
  final String catalogNumber;
  final ModelLabel label;

  ModelLabelInfo({
    required this.catalogNumber,
    required this.label,
  });

  factory ModelLabelInfo.fromJson(Map<String, dynamic> json) {
    return ModelLabelInfo(
      catalogNumber: json['catalog-number'] ?? '',
      label: ModelLabel.fromJson(json['label']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'catalog-number': catalogNumber,
      'label': label.toJson(),
    };
  }
}
