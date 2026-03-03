import 'package:dio/dio.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class InternetConnectionCheckerInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final isConnected = await InternetConnection().hasInternetAccess;
    if (!isConnected) {
      return handler.reject(
        DioException(
          requestOptions: options,
          type: DioExceptionType.connectionError, // Use connectionError type
          message: "No internet connection",
        ),
      );
    }

    return handler.next(options);
  }
}
