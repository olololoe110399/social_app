// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  BaseResponse({
    @JsonKey(name: 'data') required this.data,
  });

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) fromJsonT,
  ) =>
      _$BaseResponseFromJson(json, fromJsonT);

  final T data;
}
