import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loja_tenis_nike/controller/controller.dart';
import 'package:loja_tenis_nike/models/product.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key key,
    @required this.size,
    @required this.index,
    this.product,
  }) : super(key: key);

  final Size size;
  final Product product;
  final int index;

  @override
  Widget build(BuildContext context) {
    final Controller ctrl = Get.find();
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          color: Colors.white,
        ),
        height: 120,
        width: size.width - 40,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 120,
              width: 120,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: product.productColor,
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: product.productColor,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      product.imageUrl,
                      height: 120,
                      width: 120,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Container(
                    height: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          product.description,
                          style: TextStyle(
                              color: Colors.indigo[400],
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$${product.price}',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => ctrl.removeToCart(product.id),
                          child: Container(
                            height: 24,
                            width: 24,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 4,
                                      offset: Offset(-1, 1))
                                ]),
                            child: Icon(
                              Icons.remove,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => ctrl.addProductToCart(product),
                          child: Container(
                            height: 24,
                            width: 24,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue[200],
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 4,
                                      offset: Offset(-1, 1))
                                ]),
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
