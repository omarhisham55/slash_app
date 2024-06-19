import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Product extends Equatable {
  final int id;
  final String name;
  final double price;
  final String image;
  bool isFav;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    this.isFav = false,
  });

  @override
  List<Object?> get props => [id];
}
