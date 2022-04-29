import 'package:json_annotation/json_annotation.dart';
import 'package:social_app/models/hight_light.dart';

part 'g_news.g.dart';

@JsonSerializable()
class GNews {
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'highlights')
  List<Highlight> highlights;

  GNews({required this.title, required this.highlights});

  factory GNews.fromJson(Map<String, dynamic> json) => _$GNewsFromJson(json);

  Map<String, dynamic> toJson() => _$GNewsToJson(this);
}
