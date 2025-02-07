import 'package:json_annotation/json_annotation.dart';
part 'highlight_model.g.dart';


@JsonSerializable()
class Highlight {
  final String title;
  final String cover;

  Highlight({required this.title, required this.cover});

  factory Highlight.fromJson(Map<String, dynamic> json) => _$HighlightFromJson(json);
  Map<String, dynamic> toJson() => _$HighlightToJson(this);
}

