import 'dart:convert';

User postFromJson(String str) {
  final jsonData = json.decode(str);
  return User.fromJson(jsonData);
}

String postToJson(User data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}


List<User> allPostsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<User>.from(jsonData.map((x) => User.fromJson(x)));
}

String allPostsToJson(List<User> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class User {
  int userId;
  int id;
  String title;
  String body;

  User({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory User.fromJson(Map<String, dynamic> json) => new User(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}