const String basePath = "assets/images";
const String categoryPath = "$basePath/categories";
const String bestSellingPath = "$basePath/bestSelling";
const String newArrivalPath = "$basePath/newArrival";
const String recommendedPath = "$basePath/recommended";
const String imgIconPath = "$basePath/navIcons";

class AppImages {
  static const String carouselImg = "$basePath/carousel1.jpeg";
  static const String filter = "$basePath/filter.png";
  static const Map<String, String> categoriesImg = {
    "Fashion": "$categoryPath/shirt.png",
    "Games": "$categoryPath/dice.png",
    "Accessories": "$categoryPath/accessories.png",
    "Books": "$categoryPath/books.png",
    "Artifacts": "$categoryPath/art.png",
    "Pets Care": "$categoryPath/pets.png",
  };
  static const List<String> bestSellingImages = [
    "$bestSellingPath/best_selling_1.png",
    "$bestSellingPath/best_selling_2.png",
    "$bestSellingPath/best_selling_1.png",
    "$bestSellingPath/best_selling_2.png",
    "$bestSellingPath/best_selling_1.png",
  ];
  static const List<String> newArrivalImages = [
    "$newArrivalPath/new_arrival_1.png",
    "$newArrivalPath/new_arrival_2.png",
    "$newArrivalPath/new_arrival_1.png",
    "$newArrivalPath/new_arrival_2.png",
    "$newArrivalPath/new_arrival_1.png",
  ];
  static const List<String> recommendedImages = [
    "$recommendedPath/recommended1.png",
    "$recommendedPath/recommended2.png",
    "$recommendedPath/recommended1.png",
    "$recommendedPath/recommended2.png",
    "$recommendedPath/recommended1.png",
  ];
  static const String homeOutlined = "$imgIconPath/home_outlined.png";
  static const String homefilled = "$imgIconPath/home_filled.png";
  static const String favourtieOutlined = "$imgIconPath/favourite_outlined.png";
  static const String favourtiefilled = "$imgIconPath/favourite_filled.png";
  static const String shoppingCartOutlined =
      "$imgIconPath/shopping_cart_outlined.png";
  static const String shoppingCartfilled =
      "$imgIconPath/shopping_cart_filled.png";
  static const String profileOutlined = "$imgIconPath/profile_outlined.png";
  static const String profilefilled = "$imgIconPath/profile_filled.png";
}
