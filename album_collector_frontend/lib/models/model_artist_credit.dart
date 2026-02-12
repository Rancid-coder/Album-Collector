import 'package:album_collector_frontend/models/model_artist.dart';

class ModelArtistCredit {
  final String name;
  final ModelArtist artist;

  ModelArtistCredit({
    required this.name,
    required this.artist,
  });

  factory ModelArtistCredit.fromJson(Map<String, dynamic> json) {
    return ModelArtistCredit(
      name: json['name'],
      artist: ModelArtist.fromJson(json['artist']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'artist': artist.toJson(),
    };
  }
}
