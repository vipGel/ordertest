import 'package:dio/dio.dart';
import 'package:ordertest/domain/entities/order/order.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi()
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  @POST('/api/orders')
  Future<OrderEntity> createOrder(int userId, int serviceId);
}
