import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../core/error/failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/diamond.dart';
import '../repositories/diamond_repositiry.dart';

class FilterDiamonds implements UseCase<List<Diamond>, FilterParams> {
  final DiamondRepository repository;

  FilterDiamonds(this.repository);

  @override
  Future<Either<Failure, List<Diamond>>> call(FilterParams params) async {
    return await repository.filterDiamonds(
      caratFrom: params.caratFrom,
      caratTo: params.caratTo,
      lab: params.lab,
      shape: params.shape,
      color: params.color,
      clarity: params.clarity,
    );
  }
}

class FilterParams extends Equatable {
  final double? caratFrom;
  final double? caratTo;
  final String? lab;
  final String? shape;
  final String? color;
  final String? clarity;

  const FilterParams({
    this.caratFrom,
    this.caratTo,
    this.lab,
    this.shape,
    this.color,
    this.clarity,
  });

  @override
  List<Object?> get props => [caratFrom, caratTo, lab, shape, color, clarity];
}
