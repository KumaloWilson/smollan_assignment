import 'package:json_annotation/json_annotation.dart';
import 'package:smollan_assignment/models/post_model.dart';
import 'package:smollan_assignment/models/story_model.dart';

part 'feed_model.g.dart';


@JsonSerializable()
class Feed {
  final List<Story> stories;
  final List<Post> posts;

  Feed({required this.stories, required this.posts});

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
  Map<String, dynamic> toJson() => _$FeedToJson(this);
}



