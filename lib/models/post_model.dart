import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';


@JsonSerializable()
class Post {
  final String username;
  @JsonKey(name: 'profile_pic')
  final String profilePic;
  final String image;
  final String likes;
  final String caption;

  Post({
    required this.username,
    required this.profilePic,
    required this.image,
    required this.likes,
    required this.caption,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}


