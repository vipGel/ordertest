import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';

part 'order.g.dart';

@freezed
abstract class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    @JsonKey(name: 'order_id') required int orderId,
    required String status,
    @JsonKey(name: 'payment_url') required String? paymentUrl,
  }) = _OrderEntity;
  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);

}
