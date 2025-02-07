import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';


@JsonSerializable()
class Post {
  final String username;
  @JsonKey(name: 'profile_pic')
  final String profilePic;
  final String image;
  final int likes;
  final String caption;
  @JsonKey(name: 'post_date')
  final String postDate;
  @JsonKey(name: 'post_text')
  final String postText;

  Post({
    required this.username,
    required this.profilePic,
    required this.image,
    required this.likes,
    required this.caption,
    required this.postDate,
    required this.postText,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}


