
import 'package:advicer/feature/data/datasources/advice_remote_datasource.dart';
import 'package:advicer/feature/data/exceptions/exceptions.dart';
import 'package:advicer/feature/domain/entities/advice.dart';
import 'package:advicer/feature/domain/failures/failures.dart';
import 'package:advicer/feature/domain/repositories/repo.dart';
import 'package:dartz/dartz.dart';

class AdviceRepoImpl implements AdviceRepo {
  AdviceRepoImpl({required this.adviceRemoteDatasource});
  final AdviceRemoteDatasource adviceRemoteDatasource;
  
  @override
  Future<Either<Failure, AdviceEntity>> getAdviceFromDatasource() async {
    try {
      final result = await adviceRemoteDatasource.getRandomAdviceFromApi();
      return right(result);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } catch (e) {
      return left(GeneralFailure());
    }
  }
}