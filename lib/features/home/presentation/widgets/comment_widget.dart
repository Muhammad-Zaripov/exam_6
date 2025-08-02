// comment_widget.dart
import 'package:exam_project/features/home/data/models/coment_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../data/repositories/coment_repository.dart';

class CommentWidget extends StatefulWidget {
  const CommentWidget({super.key});

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  final CommentRepository _repository = CommentRepository();
  List<CommentModel> comments = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadComments();
  }

  Future<void> _loadComments() async {
    try {
      final result = await _repository.fetchComments();
      setState(() {
        comments = result;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      debugPrint('Error loading comments: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              '${comments.length} comments',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : comments.isEmpty
                ? const Center(child: Text('No comments found'))
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: comments.length,
                    itemBuilder: (context, index) {
                      final comment = comments[index];
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(1000),
                            child: Image.network(
                              comment.avatar,
                              fit: BoxFit.cover,
                              width: 30,
                              height: 30,
                              errorBuilder: (_, __, ___) => Image.asset(
                                AppAssets.image,
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                        ),
                        title: Text(comment.name),
                        subtitle: Text(comment.coments),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.favorite_border),
                            Text(comment.likeCount.toString()),
                          ],
                        ),
                      );
                    },
                  ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Add comment...'),
            ),
          ),
        ],
      ),
    );
  }
}
