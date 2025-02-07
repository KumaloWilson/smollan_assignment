// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      username: json['username'] as String,
      profilePic: json['profile_pic'] as String,
      posts: (json['posts'] as num).toInt(),
      followers: (json['followers'] as num).toInt(),
      following: (json['following'] as num).toInt(),
      bio: Bio.fromJson(json['bio'] as Map<String, dynamic>),
      highlights: (json['highlights'] as List<dynamic>)
          .map((e) => Highlight.fromJson(e as Map<String, dynamic>))
          .toList(),
      gallery: (json['gallery'] as List<dynamic>)
          .map((e) => GalleryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'username': instance.username,
      'profile_pic': instance.profilePic,
      'posts': instance.posts,
      'followers': instance.followers,
      'following': instance.following,
      'bio': instance.bio,
      'highlights': instance.highlights,
      'gallery': instance.gallery,
    };
