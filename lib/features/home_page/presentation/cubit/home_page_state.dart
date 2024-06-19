part of 'home_page_cubit.dart';

abstract class HomePageState extends Equatable {
  const HomePageState();

  @override
  List<Object> get props => [];
}

class HomePageInitial extends HomePageState {}

class CarouselState extends HomePageState {
  final int index;

  const CarouselState({required this.index});

  @override
  List<Object> get props => [index];
}

class FavState extends HomePageState {
  final int productId;
  final bool isFav;

  const FavState({required this.productId, required this.isFav});

  @override
  List<Object> get props => [productId, isFav];
}

class BestSellingLoadingState extends HomePageState {}

class BestSellingSuccessState extends HomePageState {}

class BestSellingErrorState extends HomePageState {}

class NewArrivalLoadingState extends HomePageState {}

class NewArrivalSuccessState extends HomePageState {}

class NewArrivalErrorState extends HomePageState {}

class RecommendedLoadingState extends HomePageState {}

class RecommendedSuccessState extends HomePageState {}

class RecommendedErrorState extends HomePageState {}
