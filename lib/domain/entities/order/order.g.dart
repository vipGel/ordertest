// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) => _OrderEntity(
  orderId: (json['order_id'] as num).toInt(),
  status: json['status'] as String,
  paymentUrl: json['payment_url'] as String?,
);

Map<String, dynamic> _$OrderEntityToJson(_OrderEntity instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'status': instance.status,
      'payment_url': instance.paymentUrl,
    };
