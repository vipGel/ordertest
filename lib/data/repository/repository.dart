import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ordertest/core/error.dart';
import 'package:ordertest/core/failure.dart';
import 'package:ordertest/data/api/api.dart';
import 'package:ordertest/domain/entities/order/order.dart';
import 'package:ordertest/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final Api api;

  RepositoryImpl(this.api);

  @override
  Future<Either<Failure, OrderEntity>> createOrder(
    int userId,
    int serviceId,
  ) async {
    try {
      final order = await api.createOrder(userId, serviceId);
      return Right(order);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        return Left(const NoNetFailure(message: 'No internet connection'));
      } else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        return Left(const TimeoutFailure(message: 'Request timeout'));
      } else if (e.runtimeType == ApiException) {
        return Left(
          ApiFailure(
            message: e.message ?? "",
            status: e.response?.statusCode ?? 400,
          ),
        );
      } else {
        throw UnimplementedError();
      }
    } catch (_) {
      throw UnimplementedError();
    }
  }
}
