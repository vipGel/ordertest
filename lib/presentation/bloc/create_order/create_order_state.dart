part of 'create_order_cubit.dart';

@freezed
class CreateOrderState with _$CreateOrderState {
  const factory CreateOrderState.loading() = CreateOrderStateLoading;

  const factory CreateOrderState.error(String message) = CreateOrderStateError;

  const factory CreateOrderState.initial() = CreateOrderStateInitial;

  const factory CreateOrderState.success({
    required OrderEntity entity,
  }) = CreateOrderStateSector;
}
