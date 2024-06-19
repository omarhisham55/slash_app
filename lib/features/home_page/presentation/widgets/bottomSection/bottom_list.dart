import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/config/responsive/responsive.dart';
import 'package:slash_app/core/utils/colors.dart';
import 'package:slash_app/core/utils/image_manager.dart';
import 'package:slash_app/features/home_page/domain/entities/product.dart';
import 'package:slash_app/features/home_page/presentation/cubit/home_page_cubit.dart';

class BottomList extends StatelessWidget {
  final List<Product> products;
  const BottomList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: _mobileListView(),
      web: _webGridView(),
    );
  }

  Widget _mobileListView() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) => _bottomListItem(
          products[index],
          width: 150,
          height: 150,
        ),
      ),
    );
  }

  Widget _webGridView() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 580,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: List.generate(
          products.length,
          (index) => _bottomListItem(
            products[index],
            width: double.infinity,
            height: 210,
          ),
        ),
      ),
    );
  }

  Widget _bottomListItem(
    Product product, {
    required double width,
    required double height,
  }) {
    return SizedBox(
      width: 150,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  product.image,
                  height: height,
                  width: width,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                product.name,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'EGP ${product.price}',
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                  ),
                  ClipOval(
                    child: Image.asset(
                      product.image,
                      height: 30,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                    radius: 18,
                    backgroundColor: AppColors.dark29,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
          BlocBuilder<HomePageCubit, HomePageState>(
            builder: (context, state) {
              HomePageCubit manager = HomePageCubit.get(context);
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => manager.setFavProduct(product),
                  child: CircleAvatar(
                    backgroundColor: AppColors.lightEE,
                    child: ImageIcon(
                      AssetImage(
                        product.isFav
                            ? AppImages.favourtiefilled
                            : AppImages.favourtieOutlined,
                      ),
                      color: product.isFav ? Colors.red : null,
                      size: 20,
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
