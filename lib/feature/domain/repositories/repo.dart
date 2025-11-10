  
import 'package:advicer/feature/domain/entities/advice.dart';
import 'package:dartz/dartz.dart';

import '../failures/failures.dart';

abstract class AdviceRepo {
  Future<Either<Failure, AdviceEntity>> getAdviceFromDatasource();
}

 