import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/usecases/usecase.dart';
import '../../domain/entities/diamond.dart';
import '../../domain/usecases/filter_diamonds.dart';
import '../../domain/usecases/get_diamonds.dart';

abstract class DiamondEvent extends Equatable {
  const DiamondEvent();
}

class LoadDiamonds extends DiamondEvent {
  @override
  List<Object> get props => [];
}

class FilterDiamondsEvent extends DiamondEvent {
  final double? caratFrom;
  final double? caratTo;
  final String? lab;
  final String? shape;
  final String? color;
  final String? clarity;

  const FilterDiamondsEvent({
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

abstract class DiamondState extends Equatable {
  const DiamondState();
}

class DiamondInitial extends DiamondState {
  @override
  List<Object> get props => [];
}

class DiamondLoading extends DiamondState {
  @override
  List<Object> get props => [];
}

class DiamondLoaded extends DiamondState {
  final List<Diamond> diamonds;

  const DiamondLoaded(this.diamonds);

  @override
  List<Object> get props => [diamonds];
}

class DiamondError extends DiamondState {
  final String message;

  const DiamondError(this.message);

  @override
  List<Object> get props => [message];
}

class DiamondBloc extends Bloc<DiamondEvent, DiamondState> {
  final GetDiamonds getDiamonds;
  final FilterDiamonds filterDiamonds;

  DiamondBloc(this.getDiamonds, this.filterDiamonds) : super(DiamondInitial()) {
    on<LoadDiamonds>((event, emit) async {
      emit(DiamondLoading());
      final result = await getDiamonds(NoParams());
      emit(
        result.fold(
          (failure) => DiamondError(failure.message),
          (diamonds) => DiamondLoaded(diamonds),
        ),
      );
    });

    on<FilterDiamondsEvent>((event, emit) async {
      emit(DiamondLoading());
      final result = await filterDiamonds(
        FilterParams(
          caratFrom: event.caratFrom,
          caratTo: event.caratTo,
          lab: event.lab,
          shape: event.shape,
          color: event.color,
          clarity: event.clarity,
        ),
      );
      emit(
        result.fold(
          (failure) => DiamondError(failure.message),
          (diamonds) => DiamondLoaded(diamonds),
        ),
      );
    });
  }
}
