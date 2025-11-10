
import 'package:advicer/feature/data/datasources/advice_remote_datasource.dart';
import 'package:advicer/feature/data/repositories/advice_repo_impl.dart';
import 'package:advicer/feature/domain/repositories/repo.dart';
import 'package:advicer/feature/domain/usecases/advice_use_cases.dart';
import 'package:advicer/feature/ui/cubit/adviser_state.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.I; // sl == Service Locator

Future<void> init() async {
// ! application Layer
  // Factory = every time a new/fresh instance of that class
  sl.registerFactory(() => AdvicerCubit(adviceUseCases: sl()));

// ! domain Layer
  sl.registerFactory(() => AdviceUseCases(adviceRepo: sl()));

// ! data Layer
  sl.registerFactory<AdviceRepo>(
      () => AdviceRepoImpl(adviceRemoteDatasource: sl()));
  sl.registerFactory<AdviceRemoteDatasource>(
      () => AdviceRemoteDatasourceImpl(client: sl()));

// ! externs
  sl.registerFactory(() => http.Client());
}