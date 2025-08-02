// albums_data_source.dart
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/album_model.dart';

class AlbumsDataSource {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<List<Album>> fetchAlbums() async {
    try {
      final response = await _supabase.from('albums').select('id, album_url');
      return (response as List).map((json) => Album.fromMap(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch albums: $e');
    }
  }
}
