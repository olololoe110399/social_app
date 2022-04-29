import 'package:json_annotation/json_annotation.dart';

part 'hight_light.g.dart';

@JsonSerializable()
class Highlight {
  @JsonKey(name: 'media')
  String image;
  @JsonKey(name: 'headline')
  String headline;

  Highlight({required this.image, required this.headline});

  factory Highlight.fromJson(Map<String, dynamic> json) =>
      _$HighlightFromJson(json);

  Map<String, dynamic> toJson() => _$HighlightToJson(this);
}
