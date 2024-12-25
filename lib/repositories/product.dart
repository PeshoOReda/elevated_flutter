import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../model/model.dart';

abstract class ProductRepository {
  Future<List<Product>> fetchProducts();
}

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final http.Client client;

  ProductRepositoryImpl(this.client);

  @override
  Future<List<Product>> fetchProducts() async {
    final response =
        await client.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
