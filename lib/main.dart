import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ordertest/di.dart';
import 'package:ordertest/presentation/bloc/create_order/create_order_cubit.dart';
import 'package:ordertest/presentation/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CreateOrderCubit(di()),
        child: const MainScreen(),
      ),
    );
  }
}
