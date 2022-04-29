import 'package:json_annotation/json_annotation.dart';

part 'whatsapp_story.g.dart';

enum MediaType {
  @JsonValue('image')
  image,
  @JsonValue('video')
  video,
  @JsonValue('text')
  text
}

@JsonSerializable()
class WhatsappStory {
  @JsonKey(unknownEnumValue: MediaType.text)
  MediaType mediaType;
  @JsonKey(name: 'media')
  String media;
  @JsonKey(name: 'duration')
  double duration;
  @JsonKey(name: 'caption')
  String caption;
  @JsonKey(name: 'when')
  String when;
  @JsonKey(name: 'color')
  String color;

  WhatsappStory({
    required this.mediaType,
    required this.media,
    required this.duration,
    required this.caption,
    required this.when,
    required this.color,
  });

  factory WhatsappStory.fromJson(Map<String, dynamic> json) =>
      _$WhatsappStoryFromJson(json);

  Map<String, dynamic> toJson() => _$WhatsappStoryToJson(this);
}
