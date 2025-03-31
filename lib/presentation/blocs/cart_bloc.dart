import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/usecases/usecase.dart';
import '../../domain/entities/diamond.dart';
import '../../domain/usecases/add_to_cart.dart';
import '../../domain/usecases/get_cart.dart';
import '../../domain/usecases/remove_form_cart.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();
}

class LoadCart extends CartEvent {
  @override
  List<Object> get props => [];
}

class AddToCartEvent extends CartEvent {
  final Diamond diamond;

  const AddToCartEvent(this.diamond);

  @override
  List<Object> get props => [diamond];
}

class RemoveFromCartEvent extends CartEvent {
  final Diamond diamond;

  const RemoveFromCartEvent(this.diamond);

  @override
  List<Object> get props => [diamond];
}

class CartState extends Equatable {
  final List<Diamond> cartItems;
  final double totalCarat;
  final double totalPrice;
  final double avgPrice;
  final double avgDiscount;

  const CartState({
    required this.cartItems,
    required this.totalCarat,
    required this.totalPrice,
    required this.avgPrice,
    required this.avgDiscount,
  });

  factory CartState.initial() => const CartState(
    cartItems: [],
    totalCarat: 0.0,
    totalPrice: 0.0,
    avgPrice: 0.0,
    avgDiscount: 0.0,
  );

  @override
  List<Object> get props => [
    cartItems,
    totalCarat,
    totalPrice,
    avgPrice,
    avgDiscount,
  ];
}

class CartBloc extends Bloc<CartEvent, CartState> {
  final AddToCart addToCart;
  final RemoveFromCart removeFromCart;
  final GetCart getCart;

  CartBloc(this.addToCart, this.removeFromCart, this.getCart)
    : super(CartState.initial()) {
    on<LoadCart>((event, emit) async {
      final result = await getCart(NoParams());
      emit(
        result.fold(
          (failure) => CartState.initial(),
          (cartItems) => _updateState(cartItems),
        ),
      );
    });

    on<AddToCartEvent>((event, emit) async {
      await addToCart(
        AddToCartParams(event.diamond),
      ); // Wrap Diamond in AddToCartParams
      final result = await getCart(NoParams());
      emit(
        result.fold((failure) => state, (cartItems) => _updateState(cartItems)),
      );
    });

    on<RemoveFromCartEvent>((event, emit) async {
      await removeFromCart(
        RemoveFromCartParams(event.diamond),
      ); // Wrap Diamond in RemoveFromCartParams
      final result = await getCart(NoParams());
      emit(
        result.fold((failure) => state, (cartItems) => _updateState(cartItems)),
      );
    });
  }

  CartState _updateState(List<Diamond> cartItems) {
    final totalCarat = cartItems.fold(0.0, (sum, d) => sum + d.carat);
    final totalPrice = cartItems.fold(0.0, (sum, d) => sum + d.finalAmount);
    final avgPrice = cartItems.isEmpty ? 0.0 : totalPrice / cartItems.length;
    final avgDiscount =
        cartItems.isEmpty
            ? 0.0
            : cartItems.fold(0.0, (sum, d) => sum + d.discount) /
                cartItems.length;

    return CartState(
      cartItems: cartItems,
      totalCarat: totalCarat,
      totalPrice: totalPrice,
      avgPrice: avgPrice,
      avgDiscount: avgDiscount,
    );
  }
}
