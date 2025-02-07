// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userpost_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPost _$UserPostFromJson(Map<String, dynamic> json) => UserPost(
      username: json['username'] as String,
      profilePic: json['profile_pic'] as String,
      image: json['image'] as String,
      likes: (json['likes'] as num).toInt(),
      caption: json['caption'] as String,
      postDate: json['post_date'] as String,
      postText: json['post_text'] as String,
    );

Map<String, dynamic> _$UserPostToJson(UserPost instance) => <String, dynamic>{
      'username': instance.username,
      'profile_pic': instance.profilePic,
      'image': instance.image,
      'likes': instance.likes,
      'caption': instance.caption,
      'post_date': instance.postDate,
      'post_text': instance.postText,
    };
