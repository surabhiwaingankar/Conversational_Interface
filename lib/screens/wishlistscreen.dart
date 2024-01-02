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
      'https://i5.walmartimages.com/asr/183322b2-091b-43e2-88ac-c90360734501.c4514ecc06c6e8b7635f3eafb5a7dbdd.jpeg';
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$wishlistItemsno Items',
                    style: getBoldStyle(
                        color: Colors.black, fontSize: FontSize.s18)),
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
            ),
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
