// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      username: json['username'] as String,
      profilePic: json['profile_pic'] as String,
      image: json['image'] as String,
      likes: json['likes'] as String,
      caption: json['caption'] as String,
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'username': instance.username,
      'profile_pic': instance.profilePic,
      'image': instance.image,
      'likes': instance.likes,
      'caption': instance.caption,
    };
