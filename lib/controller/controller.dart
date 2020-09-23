import 'package:get/get.dart';
import 'package:loja_tenis_nike/models/product.dart';

class Controller extends GetxController {
  var listProduct = List<Product>().obs;

  void addProductToCart(Product product) {
    if (!listProduct.contains(product))
      listProduct.add(product);
    else {}
  }

  double get totalValue {
    double total = 0;
    var iterator = listProduct.iterator;
    while (iterator.moveNext()) {
      total += iterator.current.price;
    }

    return total;
  }

  double get totalValueMoreTax {
    double total = 0;
    double tax = 40;
    if (totalValue > 0) total = totalValue + tax;

    return total;
  }

  void removeToCart(int id) {
    var iterator = listProduct.iterator;
    while (iterator.moveNext()) {
      if (iterator.current.id == id) listProduct.remove(iterator.current);
    }
  }
}
