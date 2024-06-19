import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/core/utils/image_manager.dart';
import 'package:slash_app/features/home_page/domain/entities/product.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());

  static HomePageCubit get(context) => BlocProvider.of<HomePageCubit>(context);

  int currentCarouselPage = 0;
  changeCarouselPage(int index) {
    currentCarouselPage = index;
    emit(CarouselState(index: index));
  }

  final List<Product> bestSelling = [
    Product(
      id: 1,
      name: "Best Seller 1",
      price: 29.99,
      image: AppImages.bestSellingImages[0],
    ),
    Product(
      id: 2,
      name: "Best Seller 2",
      price: 49.99,
      image: AppImages.bestSellingImages[1],
    ),
    Product(
      id: 3,
      name: "Best Seller 3",
      price: 19.99,
      image: AppImages.bestSellingImages[2],
    ),
    Product(
      id: 4,
      name: "Best Seller 4",
      price: 39.99,
      image: AppImages.bestSellingImages[3],
    ),
    Product(
      id: 5,
      name: "Best Seller 5",
      price: 24.99,
      image: AppImages.bestSellingImages[4],
    ),
  ];

  final List<Product> newArrival = [
    Product(
      id: 1,
      name: "New Arrival 1",
      price: 34.99,
      image: AppImages.newArrivalImages[0],
    ),
    Product(
      id: 2,
      name: "New Arrival 2",
      price: 54.99,
      image: AppImages.newArrivalImages[1],
    ),
    Product(
      id: 3,
      name: "New Arrival 3",
      price: 21.99,
      image: AppImages.newArrivalImages[2],
    ),
    Product(
      id: 4,
      name: "New Arrival 4",
      price: 42.99,
      image: AppImages.newArrivalImages[3],
    ),
    Product(
      id: 5,
      name: "New Arrival 5",
      price: 29.49,
      image: AppImages.newArrivalImages[4],
    ),
  ];

  final List<Product> recommendedForYou = [
    Product(
      id: 1,
      name: "Recommended 1",
      price: 27.99,
      image: AppImages.recommendedImages[0],
    ),
    Product(
      id: 2,
      name: "Recommended 2",
      price: 47.99,
      image: AppImages.recommendedImages[1],
    ),
    Product(
      id: 3,
      name: "Recommended 3",
      price: 18.99,
      image: AppImages.recommendedImages[2],
    ),
    Product(
      id: 4,
      name: "Recommended 4",
      price: 36.99,
      image: AppImages.recommendedImages[3],
    ),
    Product(
      id: 5,
      name: "Recommended 5",
      price: 25.99,
      image: AppImages.recommendedImages[4],
    ),
  ];

  setFavProduct(Product product) {
    product.isFav = !product.isFav;
    emit(FavState(productId: product.id, isFav: product.isFav));
  }
}
