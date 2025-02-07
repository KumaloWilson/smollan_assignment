
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
