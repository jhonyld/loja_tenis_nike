import 'package:flutter/material.dart';

class Product {
  final int id;
  final int type;
  final String description;
  final String imageUrl;
  final double price;
  final int descount;
  final Color productColor;
  final double rating;
  final int qtdInTheCart;

  Product(
      {this.id,
      this.type,
      this.description,
      this.imageUrl,
      this.price,
      this.descount,
      this.productColor,
      this.rating,
      this.qtdInTheCart});
}

List<Product> listProduct = [
  Product(
      id: 1,
      type: 1,
      description: 'Nike air max 20',
      imageUrl: 'assets/images/nike-air-max.png',
      price: 280.00,
      descount: 20,
      productColor: Colors.orange[100],
      rating: 4,
      qtdInTheCart: 1),
  Product(
      id: 2,
      type: 1,
      description: 'Nike NMD',
      imageUrl: 'assets/images/nike-nmd.png',
      price: 420.00,
      productColor: Colors.pink[100],
      rating: 3.5,
      qtdInTheCart: 1),
  Product(
      id: 3,
      type: 1,
      description: 'Nike SB',
      imageUrl: 'assets/images/nike-sb.png',
      price: 240.00,
      productColor: Colors.green[100],
      rating: 4,
      qtdInTheCart: 1),
  Product(
      id: 4,
      type: 1,
      description: 'Nike NMD 20',
      imageUrl: 'assets/images/nike-nmd-branco.png',
      price: 420.00,
      descount: 10,
      productColor: Colors.blue[100],
      rating: 4.85,
      qtdInTheCart: 1),
];
