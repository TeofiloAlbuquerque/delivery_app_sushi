import 'dart:developer';

import 'package:app_delivery/app/core/rest_client/custom_dio.dart';
import 'package:app_delivery/app/models/product_model.dart';
import 'package:dio/dio.dart';

import '../../core/exceptions/repository_exception.dart';
import './products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final CustomDio dio;

  ProductsRepositoryImpl({required this.dio});

  @override
  Future<List<ProductModel>> findAllProducts() async {
    try {
      final result = await dio.unauth().get('/products');
      // Tipamos o Map para evitar o famoso erro "Lista de dynamic não é um tipo ProductModel"
      return result.data
          .map<ProductModel>((prod) => ProductModel.fromMap(prod))
          .toList();
    } on DioException catch (error, stack) {
      log('Erro ao buscar produtos', error: error, stackTrace: stack);
      throw RepositoryException(message: 'Erro ao buscar produtos');
    }
  }
}
