import 'package:advicer/feature/domain/entities/advice.dart';
import 'package:advicer/feature/domain/failures/failures.dart';
import 'package:advicer/feature/domain/repositories/repo.dart';
import 'package:dartz/dartz.dart';

class AdviceUseCases {
  AdviceUseCases({required this.adviceRepo});
  final AdviceRepo adviceRepo;

  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    return adviceRepo.getAdviceFromDatasource();
    // space for business logic
  }
}