import 'package:dartz/dartz.dart';
import 'package:ordertest/core/failure.dart';
import 'package:ordertest/domain/entities/order.dart';

abstract class Repository {
  Future<Either<Failure, OrderEntity>> createOrder(int userId, int serviceId);
}