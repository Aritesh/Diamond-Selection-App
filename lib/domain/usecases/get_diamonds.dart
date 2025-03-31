// import 'package:dartz/dartz.dart';
//
// import '../../core/error/failures.dart';
// import '../../core/usecases/usecase.dart';
// import '../entities/diamond.dart';
// import '../repositories/diamond_repositiry.dart';
//
// class GetDiamonds implements UseCase<List<Diamond>, NoParams> {
//   final DiamondRepository repository;
//
//   GetDiamonds(this.repository);
//
//   @override
//   Future<Either<Failure, List<Diamond>>> call(NoParams params) async {
//     return await repository.getDiamonds();
//   }
// }
//
// class NoParams {}
import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/diamond.dart';
import '../repositories/diamond_repositiry.dart';

class GetDiamonds implements UseCase<List<Diamond>, NoParams> {
  final DiamondRepository repository;

  GetDiamonds(this.repository);

  @override
  Future<Either<Failure, List<Diamond>>> call(NoParams params) async {
    return await repository.getDiamonds();
  }
}
