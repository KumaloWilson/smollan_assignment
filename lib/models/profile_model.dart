import 'package:json_annotation/json_annotation.dart';

import 'bio_model.dart';
import 'highlight_model.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class Profile {
  final String username;
  @JsonKey(name: 'profile_pic')
  final String profilePic;
  final int posts;
  final int followers;
  final int following;
  final Bio bio;
  final List<Highlight> highlights;
  final List<GalleryItem> gallery;

  Profile({
    required this.username,
    required this.profilePic,
    required this.posts,
    required this.followers,
    required this.following,
    required this.bio,
    required this.highlights,
    required this.gallery,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}

