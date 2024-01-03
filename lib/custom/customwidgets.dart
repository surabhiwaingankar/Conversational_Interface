import 'package:flutter/material.dart';
import 'package:conversational_interface/presentation/resources/color_manager.dart';
import 'package:conversational_interface/presentation/resources/font_manager.dart';
import 'package:conversational_interface/presentation/resources/style_manager.dart';
import 'package:conversational_interface/presentation/resources/values_manager.dart';
import 'package:conversational_interface/presentation/resources/routes_manager.dart';
import 'package:conversational_interface/screens/productdetails.dart';

class ProductItemCard extends StatelessWidget {
  final String productThumbnail;
  final String productTitle;
  final String productCategory;
  final String productDescription;
  final int productPrice;
  final int noOfRatings;
  final double rating;
  const ProductItemCard(
      {super.key,
      required this.productThumbnail,
      required this.productTitle,
      required this.productCategory,
      required this.productDescription,
      required this.productPrice,
      required this.rating,
      required this.noOfRatings});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 16,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => ProductDetails(
                        image1:
                            "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_600,h_600/global/107710/03/sv01/fnd/IND/fmt/png/FUTURE-7-Pro-Cage-Men's-Football-Shoes",
                        image2:
                            "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_600,h_600/global/107710/03/fnd/IND/fmt/png/FUTURE-7-Pro-Cage-Men's-Football-Shoes",
                        image3:
                            "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_600,h_600/global/107710/03/sv03/fnd/IND/fmt/png/FUTURE-7-Pro-Cage-Men's-Football-Shoes",
                        productTitle: productTitle,
                        productCategory: productCategory,
                        productDescription: productDescription,
                        productPrice: productPrice,
                        rating: rating,
                        noOfRatings: noOfRatings,
                      )));
        },
        child: Card(
          surfaceTintColor: ColorManager.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(image: NetworkImage(productThumbnail)),
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p8),
                child: Text(
                  productTitle,
                  style: getSemiBoldStyle(
                      color: Colors.black, fontSize: FontSize.s16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
                child: Text(
                  productCategory,
                  style: getRegularStyle(
                      color: Colors.black, fontSize: FontSize.s12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p8, vertical: 3),
                child: Text(
                  productDescription,
                  style: getRegularStyle(
                      color: Colors.black, fontSize: FontSize.s12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p8, vertical: 3),
                child: Text(
                  "₹$productPrice",
                  style: getSemiBoldStyle(
                      color: Colors.black, fontSize: FontSize.s14),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p8, vertical: 5),
                    child: RatingStars(
                      height: 15,
                      width: 65,
                      rating: rating,
                      starSize: 15,
                    ),
                  ),
                  Text(
                    '$noOfRatings',
                    style: getLightStyle(
                        color: Colors.black, fontSize: FontSize.s12),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RatingStars extends StatelessWidget {
  final double rating;
  final double starSize;
  double height = 15;
  double width = 65;
  RatingStars(
      {super.key,
      required this.rating,
      required this.starSize,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: width,
          height: height,
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Icon(
                  (rating >= index + 1)
                      ? Icons.star_rate
                      : (rating == index + 0.5)
                          ? Icons.star_half_outlined
                          : Icons.star_rate_outlined,
                  size: starSize,
                  color: const Color.fromRGBO(255, 149, 41, 1),
                );
              }),
        ),
      ],
    );
  }
}

class ItemsandSortFilter extends StatelessWidget {
  const ItemsandSortFilter({
    super.key,
    required this.itemsno,
  });

  final int itemsno;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$itemsno Items',
            style: getBoldStyle(color: Colors.black, fontSize: FontSize.s18)),
        Row(
          children: [
            Chip(
              backgroundColor: ColorManager.white,
              shadowColor: ColorManager.grey,
              elevation: 2,
              side: BorderSide.none,
              avatar: const Icon(Icons.swap_vert),
              label: Text(
                'Sort',
                style: getRegularStyle(
                    color: Colors.black, fontSize: FontSize.s14),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Chip(
              backgroundColor: ColorManager.white,
              shadowColor: ColorManager.grey,
              elevation: 2,
              side: BorderSide.none,
              avatar: const Icon(Icons.filter_alt_outlined),
              label: Text(
                'Filter',
                style: getRegularStyle(
                    color: Colors.black, fontSize: FontSize.s14),
              ),
            ),
          ],
        )
      ],
    );
  }
}
