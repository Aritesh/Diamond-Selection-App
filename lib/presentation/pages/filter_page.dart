import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../blocs/diamond_bloc.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  final _caratFromController = TextEditingController();
  final _caratToController = TextEditingController();
  String? _lab;
  String? _shape;
  String? _color;
  String? _clarity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filter Diamonds')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              TextField(
                controller: _caratFromController,
                decoration: const InputDecoration(labelText: 'Carat From'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _caratToController,
                decoration: const InputDecoration(labelText: 'Carat To'),
                keyboardType: TextInputType.number,
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'Lab'),
                items:
                    ['GIA', 'IGI', 'In-House', 'HRD']
                        .map(
                          (lab) =>
                              DropdownMenuItem(value: lab, child: Text(lab)),
                        )
                        .toList(),
                onChanged: (value) => _lab = value,
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'Shape'),
                items:
                    ['BR', 'CU', 'EM', 'MQ', 'OV', 'PR', 'PS', 'RAD', 'HS']
                        .map(
                          (shape) => DropdownMenuItem(
                            value: shape,
                            child: Text(shape),
                          ),
                        )
                        .toList(),
                onChanged: (value) => _shape = value,
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'Color'),
                items:
                    ['D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N']
                        .map(
                          (color) => DropdownMenuItem(
                            value: color,
                            child: Text(color),
                          ),
                        )
                        .toList(),
                onChanged: (value) => _color = value,
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'Clarity'),
                items:
                    ['VVS2', 'VVS1', 'VS1', 'VS2', 'I1', 'FL', 'SI2', 'IF']
                        .map(
                          (clarity) => DropdownMenuItem(
                            value: clarity,
                            child: Text(clarity),
                          ),
                        )
                        .toList(),
                onChanged: (value) => _clarity = value,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.read<DiamondBloc>().add(
                    FilterDiamondsEvent(
                      caratFrom: double.tryParse(_caratFromController.text),
                      caratTo: double.tryParse(_caratToController.text),
                      lab: _lab,
                      shape: _shape,
                      color: _color,
                      clarity: _clarity,
                    ),
                  );
                  context.push('/result');
                },
                child: const Text('Search'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
