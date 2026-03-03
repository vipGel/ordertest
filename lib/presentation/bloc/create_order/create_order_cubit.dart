import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ordertest/domain/entities/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ordertest/domain/repository/repository.dart';

part 'create_order_state.dart';

part 'create_order_cubit.freezed.dart';

class CreateOrderCubit extends Cubit<CreateOrderState> {
  final Repository repository;

  CreateOrderCubit(this.repository) : super(CreateOrderState.initial());

  Future<void> submitOrder(int userId, int serviceId) async {
    emit(CreateOrderState.loading());
    final either = await repository.createOrder(userId, serviceId);

    either.fold(
      (l) => emit(CreateOrderState.error(l.message)),
      (r) => emit(CreateOrderState.success(entity: r)),
    );
  }
}
