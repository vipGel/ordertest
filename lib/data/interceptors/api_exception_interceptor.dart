import 'package:dio/dio.dart';
import 'package:ordertest/core/error.dart';

class ApiExceptionInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final statusCode = err.response?.statusCode ?? 400;
    if (statusCode >= 400 && statusCode < 500) {
      return handler.next(
        ApiException(
          requestOptions: err.requestOptions,
          response: err.response,
        ),
      );
    }
    super.onError(err, handler);
  }
}
