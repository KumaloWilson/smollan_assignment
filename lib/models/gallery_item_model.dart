
import 'package:json_annotation/json_annotation.dart';

part 'gallery_item_model.g.dart';

@JsonSerializable()
class GalleryItem {
  final String image;

  GalleryItem({required this.image});

  factory GalleryItem.fromJson(Map<String, dynamic> json) => _$GalleryItemFromJson(json);
  Map<String, dynamic> toJson() => _$GalleryItemToJson(this);
}

