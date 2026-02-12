import 'package:album_collector_frontend/models/model_release.dart';

class ModelFinalResponse {
  final DateTime created;
  final int count;
  final int offset;
  final List<ModelRelease> releases;

  ModelFinalResponse(
      {required this.created,
      required this.count,
      required this.offset,
      required this.releases});

  factory ModelFinalResponse.fromJson(Map<String, dynamic> json) {
    return ModelFinalResponse(
      created: DateTime.parse(json["created"]),
      count: json["count"],
      offset: json["offset"],
      releases: (json["releases"] as List)
          .map((release) => ModelRelease.fromJson(release))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created.toIso8601String(),
      'count': count,
      'offset': offset,
      'releases': releases.map((release) => release.toJson()).toList(),
    };
  }
}
