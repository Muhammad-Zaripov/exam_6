// albums_repository.dart

import '../datasources/albums_datasources.dart';
import '../models/album_model.dart';

class AlbumsRepository {
  final AlbumsDataSource _dataSource = AlbumsDataSource();

  Future<List<Album>> getAlbums() async {
    try {
      return await _dataSource.fetchAlbums();
    } catch (e) {
      throw Exception('Repository error: $e');
    }
  }
}
