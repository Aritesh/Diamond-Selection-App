import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/diamond.dart';
import '../repositories/diamond_repositiry.dart';

class RemoveFromCart implements UseCase<void, RemoveFromCartParams> {
  final DiamondRepository repository;

  RemoveFromCart(this.repository);

  @override
  Future<Either<Failure, void>> call(RemoveFromCartParams params) async {
    return await repository.removeFromCart(params.diamond);
  }
}

class RemoveFromCartParams {
  final Diamond diamond;

  const RemoveFromCartParams(this.diamond);

  @override
  List<Object> get props => [diamond];
}
