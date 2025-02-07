import 'package:json_annotation/json_annotation.dart';

part 'feed_model.g.dart';

@JsonSerializable()
class FeedModel {
  final List<Story> stories;
  final List<Post> posts;

  FeedModel({required this.stories, required this.posts});

  factory FeedModel.fromJson(Map<String, dynamic> json) => _$FeedModelFromJson(json);
  Map<String, dynamic> toJson() => _$FeedModelToJson(this);
}

@JsonSerializable()
class Story {
  final String username;
  @JsonKey(name: 'profile_pic')
  final String profilePic;

  Story({required this.username, required this.profilePic});

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
  Map<String, dynamic> toJson() => _$StoryToJson(this);
}

@JsonSerializable()
class Post {
  final String username;
  @JsonKey(name: 'profile_pic')
  final String profilePic;
  final String image;
  final String likes;
  final String caption;

  Post({required this.username, required this.profilePic, required this.image, required this.likes, required this.caption});

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}

