
@JsonSerializable()
class GalleryItem {
  final String image;

  GalleryItem({required this.image});

  factory GalleryItem.fromJson(Map<String, dynamic> json) => _$GalleryItemFromJson(json);
  Map<String, dynamic> toJson() => _$GalleryItemToJson(this);
}

