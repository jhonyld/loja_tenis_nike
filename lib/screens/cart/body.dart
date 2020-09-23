import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icon_shadow/icon_shadow.dart';
import 'package:loja_tenis_nike/controller/controller.dart';
import 'package:loja_tenis_nike/screens/cart/cart_card.dart';

class Body extends StatelessWidget {
  final controller = Get.put(Controller());
  final int index = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Expanded(
          child: Container(
            height: size.height,
            width: size.width,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              color: Theme.of(context).primaryColor,
            ),
            child: Obx(() {
              return ListView.separated(
                  itemBuilder: (context, index) {
                    return CartCard(
                        size: size,
                        product: controller.listProduct[index],
                        index: index);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: controller.listProduct.length);
            }),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            alignment: Alignment.topCenter,
            height: 140,
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Subtotal:',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.3),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '\$${controller.totalValue}',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Taxes:',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.3),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '\$40',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.white,
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 14, right: 5, left: 30),
                  child: Text('\$',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
                Obx(
                  () => Text(
                    '${controller.totalValueMoreTax}',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: GestureDetector(
                    onTap: () {
                      //ctrl.addProductToCart(widget.product);
                      //Navigator.pop(context);
                    },
                    child: Container(
                      width: 170,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                        color: Colors.indigo[600],
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.shopping_cart,
                              size: 22,
                              semanticLabel: 'Icon',
                              color: Colors.blue[200],
                            ),
                            onPressed: () {},
                          ),
                          Text(
                            'Check Out',
                            style: TextStyle(
                                color: Colors.blue[200],
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
