import 'package:album_collector_frontend/models/model_area.dart';

class ModelReleaseEvent {
  final String date;
  final ModelArea area;

  ModelReleaseEvent({required this.date, required this.area});

  factory ModelReleaseEvent.fromJson(Map<String, dynamic> json) {
    return ModelReleaseEvent(
      date: json['date'] ?? '',
      area: ModelArea.fromJson(json['area']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'area': area.toJson(),
    };
  }
}
