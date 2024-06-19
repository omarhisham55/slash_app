import 'package:slash_app/features/home_page/domain/entities/product.dart';

// ignore: must_be_immutable
class ProductModel extends Product {
  ProductModel({
    required super.id,
    required super.name,
    required super.price,
    required super.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        image: json["image"],
      );
}
