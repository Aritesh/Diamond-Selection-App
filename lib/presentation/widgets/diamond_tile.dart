import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/diamond.dart';
import '../blocs/cart_bloc.dart';

class DiamondTile extends StatelessWidget {
  final Diamond diamond;
  final bool isCart;

  const DiamondTile({super.key, required this.diamond, this.isCart = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Lot ID: ${diamond.lotId}'),
        subtitle: Text(
          'Carat: ${diamond.carat}, Lab: ${diamond.lab}, Shape: ${diamond.shape}, Color: ${diamond.color}, Clarity: ${diamond.clarity}, Final Amount: \$${diamond.finalAmount}',
        ),
        trailing: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            bool inCart = state.cartItems.any((d) => d.lotId == diamond.lotId);
            return IconButton(
              icon: Icon(
                isCart || inCart
                    ? Icons.remove_shopping_cart
                    : Icons.add_shopping_cart,
              ),
              onPressed: () {
                if (isCart || inCart) {
                  context.read<CartBloc>().add(RemoveFromCartEvent(diamond));
                } else {
                  context.read<CartBloc>().add(AddToCartEvent(diamond));
                }
              },
            );
          },
        ),
      ),
    );
  }
}
