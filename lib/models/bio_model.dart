import 'package:json_annotation/json_annotation.dart';
part 'bio_model.g.dart';


@JsonSerializable()
class Bio {
  final String designation;
  final String description;
  final String website;

  Bio({required this.designation, required this.description, required this.website});

  factory Bio.fromJson(Map<String, dynamic> json) => _$BioFromJson(json);
  Map<String, dynamic> toJson() => _$BioToJson(this);
}
