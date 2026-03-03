import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

class DioConfigurator {
  Dio initDio({
    required List<Interceptor> interceptors,
    required String url,
  }) {
    final dio = Dio();
    const timeout = Duration(seconds: 10);

    dio.options
      ..baseUrl = url
      ..connectTimeout = timeout
      ..receiveTimeout = timeout;

    dio.interceptors.addAll(interceptors);

    if (!kIsWeb) {
      (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
        final client = HttpClient();
        client.badCertificateCallback = (_, __, ___) => true;
        return client;
      };
    }

    return dio;
  }
}
