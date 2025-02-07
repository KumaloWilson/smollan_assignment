import 'package:json_annotation/json_annotation.dart';


@JsonSerializable()
class Feed {
  final List<Story> stories;
  final List<Post> posts;

  Feed({required this.stories, required this.posts});

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
  Map<String, dynamic> toJson() => _$FeedToJson(this);
}



