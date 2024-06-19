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
