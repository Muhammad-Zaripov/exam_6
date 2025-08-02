// coment_repository.dart
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/coment_model.dart';

class CommentRepository {
  final SupabaseClient _client = Supabase.instance.client;

  Future<List<CommentModel>> fetchComments() async {
    try {
      final response = await _client.from('coments').select('*');
      debugPrint('Comments response: $response');
      if ((response as List).isEmpty) {
        debugPrint('No comments found');
        return [];
      }
      return (response as List<dynamic>)
          .map((e) => CommentModel.fromMap(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      debugPrint('Error fetching comments: $e');
      throw Exception('Failed to fetch comments: $e');
    }
  }
}
