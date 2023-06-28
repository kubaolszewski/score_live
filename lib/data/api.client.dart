import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  ApiClient() {
    dio = _configureDio();
  }

  late final Dio dio;

  Dio _configureDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://v2.nba.api-sports.io/',
        headers: {
          "x-apisports-key": "8b5fbf35cd73e51e95aad1bc370283ee",
        },
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: false,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      );
    }
    return dio;
  }
}
