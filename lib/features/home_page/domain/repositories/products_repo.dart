import 'package:dartz/dartz.dart';
import 'package:slash_app/config/error/failure.dart';
import 'package:slash_app/features/home_page/domain/entities/products_list.dart';

abstract class ProductsRepo {
  Future<Either<Failure, ProductsList>> getBestSellingProducts();
  Future<Either<Failure, ProductsList>> getNewArrivalProducts();
  Future<Either<Failure, ProductsList>> getRecommendedProducts();
}
