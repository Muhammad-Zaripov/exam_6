// albums_model.dart
class Album {
  final String id;
  final String albumUrl;

  Album({required this.id, required this.albumUrl});

  factory Album.fromMap(Map<String, dynamic> map) {
    return Album(
      id: map['id'] as String,
      albumUrl: (map['album_url'] as List).first.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'album_url': albumUrl};
  }
}
