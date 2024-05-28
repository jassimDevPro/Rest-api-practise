import 'package:collection/collection.dart';

class Getmodel2 {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Getmodel2({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  factory Getmodel2.fromJson(Map<String, dynamic> json) => Getmodel2(
        albumId: json['albumId'] as int?,
        id: json['id'] as int?,
        title: json['title'] as String?,
        url: json['url'] as String?,
        thumbnailUrl: json['thumbnailUrl'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'albumId': albumId,
        'id': id,
        'title': title,
        'url': url,
        'thumbnailUrl': thumbnailUrl,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Getmodel2) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      albumId.hashCode ^
      id.hashCode ^
      title.hashCode ^
      url.hashCode ^
      thumbnailUrl.hashCode;
}
