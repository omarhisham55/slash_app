import 'package:dartz/dartz.dart';
import 'package:slash_app/config/error/failure.dart';
import 'package:slash_app/features/home_page/domain/entities/products_list.dart';
import 'package:slash_app/features/home_page/domain/repositories/products_repo.dart';

class GetBestSellingProductsUsecase {
  final ProductsRepo productsRepo;

  GetBestSellingProductsUsecase({required this.productsRepo});

  Future<Either<Failure, ProductsList>> call() async =>
      await productsRepo.getBestSellingProducts();
}
