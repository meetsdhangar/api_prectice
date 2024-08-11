// To parse this JSON data, do
//
//     final commentModel = commentModelFromJson(jsonString);

import 'dart:convert';

CommentModel commentModelFromJson(String str) =>
    CommentModel.fromJson(json.decode(str));

String commentModelToJson(CommentModel data) => json.encode(data.toJson());

class CommentModel {
  int id;
  String body;
  int postId;
  User user;

  CommentModel({
    required this.id,
    required this.body,
    required this.postId,
    required this.user,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) => CommentModel(
        id: json["id"],
        body: json["body"],
        postId: json["postId"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "body": body,
        "postId": postId,
        "user": user.toJson(),
      };
}

class User {
  int id;
  String username;

  User({
    required this.id,
    required this.username,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
      };
}
