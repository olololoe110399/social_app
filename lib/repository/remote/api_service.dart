import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:social_app/config/app_constants.dart';
import 'package:social_app/models/whatsapp_story.dart';
import 'package:social_app/models/g_news.dart';
import 'package:social_app/repository/remote/responses/base_list_response.dart';
import 'package:social_app/repository/remote/responses/base_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl2)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/whatsapp.json")
  Future<BaseListResponse<WhatsappStory>> getWhatsappStories();

  @GET("/gnews.json")
  Future<BaseResponse<GNews>> getNews();
}

BaseResponse<WhatsappStory> deserializeBaseResponseWhatsappStories(
        Map<String, dynamic> json) =>
    BaseResponse<WhatsappStory>.fromJson(
      json,
      (jsonT) => WhatsappStory.fromJson(jsonT),
    );
