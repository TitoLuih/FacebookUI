class Publication {
  final User user;
  final String title;
  final DateTime createdAt;
  final String imageUrl;
  final int commentsCount;
  final int sharedCount;
  final Reaction currentUserReaction;

  Publication({
    required this.user,
    required this.title,
    required this.createdAt,
    required this.imageUrl,
    required this.commentsCount,
    required this.sharedCount,
    required this.currentUserReaction,
  });
}

class User {
  final String avatar;
  final String username;

  User({required this.avatar, required this.username});
}

enum Reaction { like, laughing, sad, shocked, angry, heart }
