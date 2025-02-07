import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  final String username;
  @JsonKey(name: 'profile_pic')
  final String profilePic;
  final int posts;
  final int followers;
  final int following;
  final Bio bio;
  final List<Highlight> highlights;
  final List<GalleryItem> gallery;

  ProfileModel({
    required this.username,
    required this.profilePic,
    required this.posts,
    required this.followers,
    required this.following,
    required this.bio,
    required this.highlights,
    required this.gallery,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}

@JsonSerializable()
class Bio {
  final String designation;
  final String description;
  final String website;

  Bio({required this.designation, required this.description, required this.website});

  factory Bio.fromJson(Map<String, dynamic> json) => _$BioFromJson(json);
  Map<String, dynamic> toJson() => _$BioToJson(this);
}

@JsonSerializable()
class Highlight {
  final String title;
  final String cover;

  Highlight({required this.title, required this.cover});

  factory Highlight.fromJson(Map<String, dynamic> json) => _$HighlightFromJson(json);
  Map<String, dynamic> toJson() => _$HighlightToJson(this);
}

@JsonSerializable()
class GalleryItem {
  final String image;

  GalleryItem({required this.image});

  factory GalleryItem.fromJson(Map<String, dynamic> json) => _$GalleryItemFromJson(json);
  Map<String, dynamic> toJson() => _$GalleryItemToJson(this);
}

