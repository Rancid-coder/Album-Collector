import 'package:album_collector_frontend/models/model_artist_credit.dart';
import 'package:album_collector_frontend/models/model_label_info.dart';
import 'package:album_collector_frontend/models/model_media.dart';
import 'package:album_collector_frontend/models/model_release_event.dart';
import 'package:album_collector_frontend/models/model_release_group.dart';
import 'package:album_collector_frontend/models/model_text_representation.dart';

class ModelRelease {
  final String id;
  final int score;
  final String statusId;
  final String? packagingId;
  final String artistCreditId;
  final int count;
  final String title;
  final String status;
  final String? packaging;
  final ModelTextRepresentation textRepresentation;
  final List<ModelArtistCredit> artistCredit;
  final ModelReleaseGroup releaseGroup;
  final String date;
  final String country;
  final List<ModelReleaseEvent> releaseEvents;
  final String barcode;
  final List<ModelLabelInfo> labelInfo;
  final int trackCount;
  final List<ModelMedia> media;

  ModelRelease(
      {required this.id,
      required this.score,
      required this.statusId,
      this.packagingId,
      required this.artistCreditId,
      required this.count,
      required this.title,
      required this.status,
      this.packaging,
      required this.textRepresentation,
      required this.artistCredit,
      required this.releaseGroup,
      required this.date,
      required this.country,
      required this.releaseEvents,
      required this.barcode,
      required this.labelInfo,
      required this.trackCount,
      required this.media});

  factory ModelRelease.fromJson(Map<String, dynamic> json) {
    return ModelRelease(
      id: json['id'],
      score: json['score'],
      statusId: json['status-id'],
      packagingId: json['packaging-id'],
      artistCreditId: json['artist-credit-id'],
      count: json['count'],
      title: json['title'],
      status: json['status'],
      packaging: json['packaging'],
      textRepresentation:
          ModelTextRepresentation.fromJson(json['text-representation']),
      artistCredit: (json['artist-credit'] as List)
          .map((ac) => ModelArtistCredit.fromJson(ac))
          .toList(),
      releaseGroup: ModelReleaseGroup.fromJson(json['release-group']),
      date: json['date'] ?? '',
      country: json['country'],
      releaseEvents: (json['release-events'] as List)
          .map((event) => ModelReleaseEvent.fromJson(event))
          .toList(),
      barcode: json['barcode'] ?? '',
      labelInfo: (json['label-info'] as List)
          .map((info) => ModelLabelInfo.fromJson(info))
          .toList(),
      trackCount: json['track-count'],
      media:
          (json['media'] as List).map((m) => ModelMedia.fromJson(m)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'score': score,
      'status-id': statusId,
      'packaging-id': packagingId,
      'artist-credit-id': artistCreditId,
      'count': count,
      'title': title,
      'status': status,
      'packaging': packaging,
      'text-representation': textRepresentation.toJson(),
      'artist-credit': artistCredit.map((ac) => ac.toJson()).toList(),
      'release-group': releaseGroup.toJson(),
      'date': date,
      'country': country,
      'release-events': releaseEvents.map((event) => event.toJson()).toList(),
      'barcode': barcode,
      'label-info': labelInfo.map((info) => info.toJson()).toList(),
      'track-count': trackCount,
      'media': media.map((m) => m.toJson()).toList(),
    };
  }
}
