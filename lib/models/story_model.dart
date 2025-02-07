
@JsonSerializable()
class Story {
  final String username;
  @JsonKey(name: 'profile_pic')
  final String profilePic;

  Story({required this.username, required this.profilePic});

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
  Map<String, dynamic> toJson() => _$StoryToJson(this);
}