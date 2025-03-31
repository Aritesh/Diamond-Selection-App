import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../entities/diamond.dart';

abstract class DiamondRepository {
  Future<Either<Failure, List<Diamond>>> getDiamonds();
  Future<Either<Failure, List<Diamond>>> filterDiamonds({
    double? caratFrom,
    double? caratTo,
    String? lab,
    String? shape,
    String? color,
    String? clarity,
  });
  Future<Either<Failure, void>> addToCart(Diamond diamond);
  Future<Either<Failure, void>> removeFromCart(Diamond diamond);
  Future<Either<Failure, List<Diamond>>> getCart();
}
