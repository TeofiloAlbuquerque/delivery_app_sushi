// Segregação por interface, um dos conceitos do SOLID
// ProductsRepository é uam interface
import 'package:app_delivery/app/models/product_model.dart';

abstract class ProductsRepository {
  Future<List<ProductModel>> findAllProducts();
}
