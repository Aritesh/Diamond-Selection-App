import 'package:equatable/equatable.dart';

class Diamond extends Equatable {
  final String lotId;
  final double size;
  final double carat;
  final String lab;
  final String shape;
  final String color;
  final String clarity;
  final String cut;
  final String polish;
  final String symmetry;
  final String fluorescence;
  final double discount;
  final double perCaratRate;
  final double finalAmount;
  final String keyToSymbol;
  final String labComment;

  const Diamond({
    required this.lotId,
    required this.size,
    required this.carat,
    required this.lab,
    required this.shape,
    required this.color,
    required this.clarity,
    required this.cut,
    required this.polish,
    required this.symmetry,
    required this.fluorescence,
    required this.discount,
    required this.perCaratRate,
    required this.finalAmount,
    required this.keyToSymbol,
    required this.labComment,
  });

  @override
  List<Object> get props => [
    lotId,
    size,
    carat,
    lab,
    shape,
    color,
    clarity,
    cut,
    polish,
    symmetry,
    fluorescence,
    discount,
    perCaratRate,
    finalAmount,
    keyToSymbol,
    labComment,
  ];
}
