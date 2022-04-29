import 'package:logger/logger.dart';
import 'package:social_app/errors/app_exception_map.dart';
import 'package:social_app/models/g_news.dart';
import 'package:social_app/models/whatsapp_story.dart';
import 'package:social_app/repository/remote/api_service.dart';
import 'package:dio/dio.dart';

var logger = Logger();

class Repository {
  final _apiService = ApiService(Dio());
  final errorMap = AppExceptionMap();

  Future<List<WhatsappStory>> getWhatsappStories() async {
    try {
      final response = await _apiService.getWhatsappStories();
      logger.i(response.data.map((e) => e.toJson()));
      return response.data;
    } catch (error) {
      logger.e(error);
      throw errorMap.map(error);
    }
  }

  Future<GNews> getNews() async {
    try {
      final response = await _apiService.getNews();
      logger.i(response.data.toJson());
      return response.data;
    } catch (error) {
      logger.e(error);
      throw errorMap.map(error);
    }
  }
}
