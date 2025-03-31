import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/diamond.dart';
import '../repositories/diamond_repositiry.dart';

class AddToCart implements UseCase<void, AddToCartParams> {
  final DiamondRepository repository;

  AddToCart(this.repository);

  @override
  Future<Either<Failure, void>> call(AddToCartParams params) async {
    return await repository.addToCart(params.diamond);
  }
}

class AddToCartParams {
  final Diamond diamond;

  const AddToCartParams(this.diamond);

  @override
  List<Object> get props => [diamond];
}
