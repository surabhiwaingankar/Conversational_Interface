import 'package:flutter/material.dart';
import 'package:conversational_interface/presentation/resources/color_manager.dart';
import 'package:conversational_interface/presentation/resources/font_manager.dart';
import 'package:conversational_interface/presentation/resources/style_manager.dart';
import 'package:conversational_interface/presentation/resources/values_manager.dart';
import 'package:conversational_interface/custom/customwidgets.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  int wishlistItemsno = 52000;
  final productThumbnail =
      "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_600,h_600/global/107710/03/sv01/fnd/IND/fmt/png/FUTURE-7-Pro-Cage-Men's-Football-Shoes";
  final productTitle = "Product Title";
  final productCategory = "Product Category";
  final productDescription = "Product Description";
  final productPrice = 499;
  final noOfRatings = 3000;
  final double rating = 3.5;
  //int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(AppPadding.p16),
            child: SearchBar(
              hintText: 'Search Any Product...',
              hintStyle: MaterialStatePropertyAll(
                TextStyle(
                    color: Colors.grey, fontFamily: FontConstants.fontFamily),
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
              ),
              surfaceTintColor: MaterialStatePropertyAll(Colors.white),
              leading: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              elevation: MaterialStatePropertyAll(1),
              trailing: [
                Padding(
                  padding: EdgeInsets.all(AppPadding.p8),
                  child: Icon(
                    Icons.mic_none,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p16, vertical: 0),
            child: ItemsandSortFilter(itemsno: wishlistItemsno),
          ),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            direction: Axis.horizontal,
            children: [
              ProductItemCard(
                productThumbnail: productThumbnail,
                productCategory: productCategory,
                productDescription: productDescription,
                productTitle: productTitle,
                productPrice: productPrice,
                rating: rating,
                noOfRatings: noOfRatings,
              ),
              ProductItemCard(
                productThumbnail: productThumbnail,
                productCategory: productCategory,
                productDescription: productDescription,
                productTitle: productTitle,
                productPrice: productPrice,
                rating: rating,
                noOfRatings: noOfRatings,
              ),
              ProductItemCard(
                productThumbnail: productThumbnail,
                productCategory: productCategory,
                productDescription: productDescription,
                productTitle: productTitle,
                productPrice: productPrice,
                rating: rating,
                noOfRatings: noOfRatings,
              ),
              ProductItemCard(
                productThumbnail: productThumbnail,
                productCategory: productCategory,
                productDescription: productDescription,
                productTitle: productTitle,
                productPrice: productPrice,
                rating: rating,
                noOfRatings: noOfRatings,
              ),
              ProductItemCard(
                productThumbnail: productThumbnail,
                productCategory: productCategory,
                productDescription: productDescription,
                productTitle: productTitle,
                productPrice: productPrice,
                rating: rating,
                noOfRatings: noOfRatings,
              ),
              ProductItemCard(
                productThumbnail: productThumbnail,
                productCategory: productCategory,
                productDescription: productDescription,
                productTitle: productTitle,
                productPrice: productPrice,
                rating: rating,
                noOfRatings: noOfRatings,
              ),
            ],
          )
        ],
      ),
    );
  }
}
