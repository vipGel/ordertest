import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ordertest/presentation/bloc/create_order/create_order_cubit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void onPressed() {
    context.read<CreateOrderCubit>().submitOrder(1, 1);
  }

  @override
  Widget build(BuildContext context) {
    final state = context
        .watch<CreateOrderCubit>()
        .state;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            state.map(
              loading: (_) => const CircularProgressIndicator(),
              error: (e) => Text(e.message),
              initial: (_) => const SizedBox.shrink(),
              success: (s) => Text(s.entity.toString()),
            ),
            ElevatedButton(
              onPressed: state is CreateOrderStateLoading ? null : onPressed,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
