class CommentModel {
  final String id;
  final String avatar;
  final int likeCount;
  final String coments;
  final String name;

  CommentModel({
    required this.id,
    required this.avatar,
    required this.likeCount,
    required this.coments,
    required this.name,
  });

  factory CommentModel.fromMap(Map<String, dynamic> map) {
    return CommentModel(
      id: map['id'],
      name: map['name'],
      coments: map['coment'],
      likeCount: map['like_count'],
      avatar: (map['avatar'] as List).isNotEmpty ? map['avatar'][0] : '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'avatar': avatar,
      'like_count': likeCount,
      'coment': coments,
      'name': name,
    };
  }
}
