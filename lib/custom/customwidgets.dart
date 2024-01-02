import 'package:flutter/material.dart';
import 'package:conversational_interface/presentation/resources/color_manager.dart';
import 'package:conversational_interface/presentation/resources/font_manager.dart';
import 'package:conversational_interface/presentation/resources/style_manager.dart';
import 'package:conversational_interface/presentation/resources/values_manager.dart';

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
                    rating: rating,
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
    );
  }
}

class RatingStars extends StatelessWidget {
  final double rating;
  const RatingStars({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 65,
          height: 15,
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
                  size: 13.33,
                  color: const Color.fromRGBO(255, 149, 41, 1),
                );
              }),
        ),
      ],
    );
  }
}
