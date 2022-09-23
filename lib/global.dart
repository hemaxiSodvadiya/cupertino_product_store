import 'dart:ui';

class Product {
  final int id;
  final String name;
  final int price;
  String? image;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });
}

class Search {
  final String name;
  final int price;
  String image;

  Search({required this.name, required this.price, required this.image});
}

class Count {
  late String name;
  late int price;
  late String image;

  // late dynamic sum;

  Count({
    required this.name,
    required this.price,
    required this.image,

    //this.sum,
  });
}

class AddList {
  final int id;
  final String name;
  final int price;
  String? image;

  AddList({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });
}
