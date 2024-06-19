import 'package:get_it/get_it.dart';
import 'package:slash_app/features/home_page/data/repositories/products_repo_impl.dart';
import 'package:slash_app/features/home_page/domain/repositories/products_repo.dart';
import 'package:slash_app/features/home_page/domain/usecases/get_best_selling_products_usecase.dart';
import 'package:slash_app/features/home_page/domain/usecases/get_new_arrival_products_usecase.dart';
import 'package:slash_app/features/home_page/domain/usecases/get_recommended_products_usecase.dart';
import 'package:slash_app/features/home_page/presentation/cubit/home_page_cubit.dart';

class Dpi {
  static GetIt getit = GetIt.instance;

  static Future<void> init() async {
    getit.registerFactory(() => HomePageCubit(
          getBestSellingProductsUsecase: getit(),
          getNewArrivalProductsUsecase: getit(),
          getRecommendedProductsUsecase: getit(),
        ));

    getit.registerLazySingleton<ProductsRepo>(() => ProductsRepoImpl());
    getit.registerLazySingleton(
      () => GetBestSellingProductsUsecase(productsRepo: getit()),
    );
    getit.registerLazySingleton(
      () => GetNewArrivalProductsUsecase(productsRepo: getit()),
    );
    getit.registerLazySingleton(
      () => GetRecommendedProductsUsecase(productsRepo: getit()),
    );
  }
}
