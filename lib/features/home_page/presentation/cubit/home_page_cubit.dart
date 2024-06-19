import 'package:carousel_slider/carousel_slider.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/features/home_page/domain/entities/product.dart';
import 'package:slash_app/features/home_page/domain/usecases/get_best_selling_products_usecase.dart';
import 'package:slash_app/features/home_page/domain/usecases/get_new_arrival_products_usecase.dart';
import 'package:slash_app/features/home_page/domain/usecases/get_recommended_products_usecase.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  final GetBestSellingProductsUsecase getBestSellingProductsUsecase;
  final GetNewArrivalProductsUsecase getNewArrivalProductsUsecase;
  final GetRecommendedProductsUsecase getRecommendedProductsUsecase;
  HomePageCubit({
    required this.getBestSellingProductsUsecase,
    required this.getNewArrivalProductsUsecase,
    required this.getRecommendedProductsUsecase,
  }) : super(HomePageInitial());

  static HomePageCubit get(context) => BlocProvider.of<HomePageCubit>(context);

  final CarouselController carouselController = CarouselController();
  int currentCarouselPage = 0;
  changeCarouselPage(int index) {
    currentCarouselPage = index;
    carouselController.animateToPage(index);
    emit(CarouselState(index: index));
  }

  List<Product> bestSelling = [];
  getBestSellingProducts() async {
    emit(BestSellingLoadingState());
    final response = await getBestSellingProductsUsecase();
    emit(response.fold(
      (l) => BestSellingErrorState(),
      (r) {
        bestSelling = r.products;
        return BestSellingSuccessState();
      },
    ));
  }

  List<Product> newArrival = [];
  getNewArrivalProducts() async {
    emit(NewArrivalLoadingState());
    final response = await getNewArrivalProductsUsecase();
    emit(response.fold(
      (l) => NewArrivalErrorState(),
      (r) {
        newArrival = r.products;
        return NewArrivalSuccessState();
      },
    ));
  }

  List<Product> recommendedForYou = [];
  getRecommendedProducts() async {
    emit(RecommendedLoadingState());
    final response = await getRecommendedProductsUsecase();
    emit(response.fold(
      (l) => RecommendedErrorState(),
      (r) {
        recommendedForYou = r.products;
        return RecommendedSuccessState();
      },
    ));
  }

  setFavProduct(Product product) {
    product.isFav = !product.isFav;
    emit(FavState(productId: product.id, isFav: product.isFav));
  }
}
