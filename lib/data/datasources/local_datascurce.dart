import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/diamond_model.dart';

abstract class LocalDataSource {
  Future<void> saveCart(List<DiamondModel> cart);
  Future<List<DiamondModel>> getCart();
}

class LocalDataSourceImpl implements LocalDataSource {
  final SharedPreferences sharedPreferences;

  LocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<void> saveCart(List<DiamondModel> cart) async {
    final cartJson = cart.map((d) => d.toJson()).toList();
    await sharedPreferences.setString('cart', jsonEncode(cartJson));
  }

  @override
  Future<List<DiamondModel>> getCart() async {
    final cartString = sharedPreferences.getString('cart');
    if (cartString != null) {
      final List<dynamic> cartJson = jsonDecode(cartString);
      return cartJson.map((json) => DiamondModel.fromJson(json)).toList();
    }
    return [];
  }
}
