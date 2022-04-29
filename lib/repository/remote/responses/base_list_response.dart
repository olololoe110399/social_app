// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_list_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseListResponse<T> {
  BaseListResponse({
    @JsonKey(name: 'data') required this.data,
  });

  factory BaseListResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) fromJsonT,
  ) =>
      _$BaseListResponseFromJson(json, fromJsonT);

  final List<T> data;
}
