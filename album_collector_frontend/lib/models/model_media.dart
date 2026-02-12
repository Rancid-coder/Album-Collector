class ModelMedia {
  final String id;
  final String? format;
  final int discCount;
  final int trackCount;

  ModelMedia({
    required this.id,
    this.format,
    required this.discCount,
    required this.trackCount,
  });

  factory ModelMedia.fromJson(Map<String, dynamic> json) {
    return ModelMedia(
      id: json['id'],
      format: json['format'],
      discCount: json['disc-count'] ?? 0,
      trackCount: json['track-count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'format': format,
      'disc-count': discCount,
      'track-count': trackCount,
    };
  }
}