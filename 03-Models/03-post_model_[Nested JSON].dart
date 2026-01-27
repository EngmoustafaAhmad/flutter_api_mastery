//>>>>>>>>>>>>>>>>>>>>>>>> json example
{
  "id": 1,
  "title": "Hello",
  "user": {
    "id": 10,
    "name": "Ali"
  }
}

class Post {
  final int id;
  final String title;
  final User user;

  Post({
    required this.id,
    required this.title,
    required this.user,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      user: User.fromJson(json['user']),
    );
  }
}

class User {
  final int id;
  final String name;

  User({
    required this.id,
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
    );
  }
}
