import 'package:get_it/get_it.dart';
import 'package:ordertest/data/api/api.dart';
import 'package:ordertest/data/dio_configurator.dart';
import 'package:ordertest/data/interceptors/api_exception_interceptor.dart';
import 'package:ordertest/data/interceptors/internet_connection_checker.dart';
import 'package:ordertest/data/repository/repository.dart';
import 'package:ordertest/domain/repository/repository.dart';


final di = GetIt.instance;

Future<void> initDI() async {
  final interceptors = [
    ApiExceptionInterceptor(),
    InternetConnectionCheckerInterceptor(),
  ];

  final dio = DioConfigurator().initDio(interceptors: interceptors, url: '');
  di.registerLazySingleton(() => dio);
  di.registerLazySingleton(() => Api(di()));
  di.registerLazySingleton<Repository>(() => RepositoryImpl(di()));

}
