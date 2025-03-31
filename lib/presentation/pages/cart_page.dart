import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/cart_bloc.dart';
import '../widgets/diamond_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.cartItems.length,
                  itemBuilder:
                      (context, index) => DiamondTile(
                        diamond: state.cartItems[index],
                        isCart: true,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text('Total Carat: ${state.totalCarat.toStringAsFixed(2)}'),
                    Text(
                      'Total Price: \$${state.totalPrice.toStringAsFixed(2)}',
                    ),
                    Text('Avg Price: \$${state.avgPrice.toStringAsFixed(2)}'),
                    Text(
                      'Avg Discount: ${state.avgDiscount.toStringAsFixed(2)}%',
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
