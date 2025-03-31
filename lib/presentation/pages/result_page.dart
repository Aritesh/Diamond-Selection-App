import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../blocs/diamond_bloc.dart';
import '../widgets/diamond_tile.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String _sortBy = 'finalAmount';
  bool _isAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filtered Diamonds'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => context.push('/cart'),
          ),
        ],
      ),
      body: BlocBuilder<DiamondBloc, DiamondState>(
        builder: (context, state) {
          if (state is DiamondLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is DiamondLoaded) {
            List diamonds = List.from(state.diamonds);
            if (_sortBy == 'finalAmount') {
              diamonds.sort(
                (a, b) =>
                    _isAscending
                        ? a.finalAmount.compareTo(b.finalAmount)
                        : b.finalAmount.compareTo(a.finalAmount),
              );
            } else if (_sortBy == 'carat') {
              diamonds.sort(
                (a, b) =>
                    _isAscending
                        ? a.carat.compareTo(b.carat)
                        : b.carat.compareTo(a.carat),
              );
            }

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DropdownButton<String>(
                        value: _sortBy,
                        items: [
                          DropdownMenuItem(
                            value: 'finalAmount',
                            child: Text('Final Price'),
                          ),
                          DropdownMenuItem(
                            value: 'carat',
                            child: Text('Carat Weight'),
                          ),
                        ],
                        onChanged: (value) => setState(() => _sortBy = value!),
                      ),
                      ElevatedButton(
                        onPressed:
                            () => setState(() => _isAscending = !_isAscending),
                        child: Text(_isAscending ? 'Asc' : 'Desc'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: diamonds.length,
                    itemBuilder:
                        (context, index) =>
                            DiamondTile(diamond: diamonds[index]),
                  ),
                ),
              ],
            );
          } else if (state is DiamondError) {
            return Center(child: Text(state.message));
          }
          return const Center(child: Text('No diamonds found'));
        },
      ),
    );
  }
}
