import 'package:flutter/material.dart';
import 'package:loja_tenis_nike/models/product.dart';
import 'package:loja_tenis_nike/screens/home/components/category_list.dart';
import 'package:loja_tenis_nike/screens/home/components/main_title.dart';
import 'package:loja_tenis_nike/screens/home/components/product_grid.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          MainTitle(),
          CategoryList(),
          ProductGrid(),
        ],
      ),
    );
  }
}
