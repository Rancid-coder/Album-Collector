import 'package:album_collector_frontend/models/model_artist.dart';

class ModelArtistCredit {
  final String name;
  final ModelArtist artist;
  final String? joinphrase;

  ModelArtistCredit({
    required this.name,
    required this.artist,
    this.joinphrase,
  });

  factory ModelArtistCredit.fromJson(Map<String, dynamic> json) {
    return ModelArtistCredit(
        name: json['name'],
        artist: ModelArtist.fromJson(json['artist']),
        joinphrase: json['joinphrase']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'artist': artist.toJson(),
      'joinphrase': joinphrase,
    };
  }
}
