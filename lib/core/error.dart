import 'package:dio/dio.dart';

class ApiException extends DioException {
  ApiException({required super.requestOptions, required super.response})
    : super(type: DioExceptionType.badResponse);
}
