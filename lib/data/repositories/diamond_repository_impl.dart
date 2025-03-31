import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../../domain/entities/diamond.dart';
import '../../domain/repositories/diamond_repositiry.dart';
import '../datasources/diamond_datasource.dart';
import '../datasources/local_datascurce.dart';
import '../models/diamond_model.dart';

class DiamondRepositoryImpl implements DiamondRepository {
  final DiamondDataSource diamondDataSource;
  final LocalDataSource localDataSource;

  DiamondRepositoryImpl(this.diamondDataSource, this.localDataSource);

  @override
  Future<Either<Failure, List<Diamond>>> getDiamonds() async {
    try {
      final diamonds = diamondDataSource.getDiamonds();
      return Right(diamonds);
    } catch (e) {
      return Left(CacheFailure('Failed to load diamonds'));
    }
  }

  @override
  Future<Either<Failure, List<Diamond>>> filterDiamonds({
    double? caratFrom,
    double? caratTo,
    String? lab,
    String? shape,
    String? color,
    String? clarity,
  }) async {
    try {
      final diamonds =
          diamondDataSource.getDiamonds().where((diamond) {
            bool matches = true;
            if (caratFrom != null)
              matches = matches && diamond.carat >= caratFrom;
            if (caratTo != null) matches = matches && diamond.carat <= caratTo;
            if (lab != null && lab.isNotEmpty)
              matches = matches && diamond.lab == lab;
            if (shape != null && shape.isNotEmpty)
              matches = matches && diamond.shape == shape;
            if (color != null && color.isNotEmpty)
              matches = matches && diamond.color == color;
            if (clarity != null && clarity.isNotEmpty)
              matches = matches && diamond.clarity == clarity;
            return matches;
          }).toList();
      return Right(diamonds);
    } catch (e) {
      return Left(CacheFailure('Failed to filter diamonds'));
    }
  }

  @override
  Future<Either<Failure, void>> addToCart(Diamond diamond) async {
    try {
      final cart = await localDataSource.getCart();
      cart.add(diamond as DiamondModel);
      await localDataSource.saveCart(cart);
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure('Failed to add to cart'));
    }
  }

  @override
  Future<Either<Failure, void>> removeFromCart(Diamond diamond) async {
    try {
      final cart = await localDataSource.getCart();
      cart.removeWhere((d) => d.lotId == diamond.lotId);
      await localDataSource.saveCart(cart);
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure('Failed to remove from cart'));
    }
  }

  @override
  Future<Either<Failure, List<Diamond>>> getCart() async {
    try {
      final cart = await localDataSource.getCart();
      return Right(cart);
    } catch (e) {
      return Left(CacheFailure('Failed to load cart'));
    }
  }
}
