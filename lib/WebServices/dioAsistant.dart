import 'package:dio/dio.dart';
import 'package:real_state_app/Constans/strings.dart';

class DioAsistant {
  late Dio dio;

  DioAsistant() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 120 * 1000, // 120 seconds
      receiveTimeout: 120 * 1000, // 120 seconds

    );

    dio = Dio(options);
  }
}